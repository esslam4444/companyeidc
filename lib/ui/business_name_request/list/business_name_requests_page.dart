import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/shared/elevate_on_scroll.dart';
import 'package:companyeidc/ui/shared/indicator_widget.dart';
import 'package:companyeidc/ui/shared/label_row_widget.dart';
import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'business_name_requests_controller.dart';

class BusinessNameRequestsPage extends ConsumerWidget {
  const BusinessNameRequestsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(businessNameRequestsProvider);
    return ElevateOnScroll(builder: (context, elevation) {
      return Scaffold(
        appBar: AppBar(
          elevation: elevation,
          title: Text(S.of(context).myBussinessNames),
        ),
        body: state.maybeWhen(
          failure: (failure) => IndicatorWidget(
            svgAsset: Svgs.noConnection,
            message: failure.message ?? S.of(context).somethingWentWrong,
            action: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                )),
                onPressed:
                    ref.read(businessNameRequestsProvider.notifier).fetch,
                child: Text(S.of(context).retry),
              ),
            ),
          ),
          orElse: () => const LoadingWidget(),
          loaded: (data, _) => data.isEmpty
              ? IndicatorWidget(
                  svgAsset: Svgs.noData,
                  message: S.of(context).nothingToShow,
                )
              : ListView.builder(
                  padding: const EdgeInsets.only(top: 16, bottom: 100),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final businessNameRequest = data[index];
                    final captionStyle = Theme.of(context)
                        .textTheme
                        .caption
                        ?.copyWith(height: 1.4, fontSize: 15);
                    final valueStyle = Theme.of(context).textTheme.subtitle1;
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(S.of(context).nameStatus,
                                    style: captionStyle),
                                const Gap(16),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: Container(
                                      child: Text(
                                        businessNameRequest
                                            .getBusinessNameStatusString(),
                                        style: valueStyle?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: businessNameRequest
                                              .getBusinessNameStatusColor(),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: businessNameRequest
                                            .getBusinessNameStatusColor()
                                            .withOpacity(.2),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(height: 24),
                            if (businessNameRequest.selectedFullName !=
                                null) ...[
                              Text(S.of(context).approvedName,
                                  style: captionStyle),
                              const Gap(8),
                              Text(businessNameRequest.selectedFullName ?? "",
                                  style: valueStyle?.copyWith(height: 1.4)),
                              const Divider(height: 24),
                            ],
                            if (businessNameRequest.id != null) ...[
                              LabelValueRow(
                                label: S.of(context).requestNo,
                                value: businessNameRequest.id.toString(),
                              ),
                              const Divider(height: 24),
                            ],
                            LabelValueRow(
                              label: S.of(context).commercialRegisteryOfficeName,
                              value: businessNameRequest
                                      .commercialRegistryOfficeName ??
                                  '',
                            ),
                            const Divider(height: 16),
                            LabelValueRow(
                              label: S.of(context).notary,
                              value: businessNameRequest.notaryName ?? '',
                            ),
                            const Gap(8),
                            // if (data.notes?.isNotEmpty == true) ...[
                            //   _LabelValueRow(
                            //     label: S.of(context).notes,
                            //     value: data.notes.toString(),
                            //   ),
                            //   const Divider(height: 24),
                            // ],
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      );
    });
  }
}
