import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/shared/indicator_widget.dart';
import 'package:companyeidc/ui/shared/label_row_widget.dart';
import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:companyeidc/ui/transactions/finder/find_transaction_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TransactionFinderPage extends ConsumerWidget {
  const TransactionFinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final controller = ref.read(transactionFinderProvider.notifier);
    final state = ref.watch(transactionFinderProvider);
    final textFiledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(color: Colors.transparent),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          S.of(context).queryTransaction,
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        iconTheme: IconThemeData(
          color: theme.colorScheme.onPrimary,
        ),
        backgroundColor: theme.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(72),
          child: ReactiveForm(
            formGroup: controller.form,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
              child: ReactiveTextField(
                formControl: controller.transactionId,
                textInputAction: TextInputAction.search,
                ///  Add the (control) parameter ==========================
                onSubmitted: (control) { // Add the (control) parameter
                  if (controller.isValid) {
                    controller.submit();
                  }
                },
                ///==========================================================
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Builder(builder: (context) {
                      ReactiveForm.of(context)!;
                      return OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                          side: BorderSide(
                            width: 1.5,
                            color: theme.primaryColor,
                          ),
                          minimumSize: const Size(88, 44),
                        ),
                        child: Text(S.of(context).search),
                        onPressed: controller.isValid ? controller.submit : null,
                      );
                    }),
                  ),
                  // suffixIconConstraints: const BoxConstraints(minWidth: 56),
                  filled: true,
                  fillColor: theme.scaffoldBackgroundColor,
                  hintText: S.of(context).transactionNo,
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  border: textFiledBorder,
                  enabledBorder: textFiledBorder,
                  focusedBorder: textFiledBorder,
                ),
              ),
            ),
          ),
        ),
      ),
      body: state.when(
          initial: (_) => const IndicatorWidget(
                svgAsset: Svgs.search,
                message: '',
              ),
          failure: (failure, _) => IndicatorWidget(
                svgAsset: Svgs.noConnection,
                message: failure?.message ?? S.of(context).somethingWentWrong,
                action: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    )),
                    onPressed: controller.submit,
                    child: Text(S.of(context).retry),
                  ),
                ),
              ),
          loading: (_) => const LoadingWidget(),
          success: (data) {
            final captionStyle = Theme.of(context).textTheme.caption?.copyWith(height: 1.4, fontSize: 15);
            final valueStyle = Theme.of(context).textTheme.subtitle1;
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            S.of(context).transactionStatus,
                            style: captionStyle,
                          ),
                          const Gap(16),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Container(
                                child: Text(
                                  data.getTransactionStatusString(),
                                  style: valueStyle?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: data.getTransactionStatusColor(),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: data.getTransactionStatusColor().withOpacity(.2),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(height: 24),
                      if (data.approvedName != null) ...[
                        Text(
                          S.of(context).approvedName,
                          style: captionStyle,
                        ),
                        const Gap(8),
                        Text(data.approvedName!, style: valueStyle?.copyWith(height: 1.4)),
                        const Divider(height: 32),
                      ],
                      LabelValueRow(
                        label: S.of(context).businessNameRequestNo,
                        value: data.businessNameRequestId.toString(),
                      ),
                      const Divider(height: 24),
                      LabelValueRow(
                        label: S.of(context).transactionType,
                        value: data.getTransactionTypeString(),
                      ),
                      const Divider(height: 24),
                      LabelValueRow(
                        label: S.of(context).transactionNo,
                        value: data.id.toString(),
                      ),
                      const Divider(height: 24),
                      if (data.notes?.isNotEmpty == true) ...[
                        LabelValueRow(
                          label: S.of(context).notes,
                          value: data.notes.toString(),
                        ),
                        const Divider(height: 24),
                      ],
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
