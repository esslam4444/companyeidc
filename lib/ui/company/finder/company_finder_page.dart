import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/company/finder/find_company_action.dart';
import 'package:companyeidc/ui/shared/indicator_widget.dart';
import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CompanyFinderPage extends ConsumerWidget {
  const CompanyFinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final controller = ref.read(companyFinderProvider.notifier);
    final state = ref.watch(companyFinderProvider);
    final textFiledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(color: Colors.transparent),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          S.of(context).searchCompanyNames,
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
                formControl: controller.query,
                textInputAction: TextInputAction.search,
                ///  Add the (control) parameter ==========================
                onSubmitted: (control) { // Add the (control) parameter
                  if (controller.isValid) {
                    controller.submit();
                  }
                },
///========================================================================
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
                  hintText: S.of(context).companySearchHint,
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
              onPressed: ref.read(companyFinderProvider.notifier).submit,
              child: Text(S.of(context).retry),
            ),
          ),
        ),
        loading: (_) => const LoadingWidget(),
        success: (data) => data.isEmpty
            ? IndicatorWidget(
                svgAsset: Svgs.search,
                message: S.of(context).noSearchResults,
              )
            : ListView.builder(
                padding: const EdgeInsets.only(top: 16, bottom: 100),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final record = data[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 16,
                      ),
                      //
                      title: Text(
                        record.name,
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
