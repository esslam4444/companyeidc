import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/company/list/companies_controller.dart';
import 'package:companyeidc/ui/shared/elevate_on_scroll.dart';
import 'package:companyeidc/ui/shared/indicator_widget.dart';
import 'package:companyeidc/ui/shared/label_row_widget.dart';
import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class CompaniesPage extends ConsumerWidget {
  const CompaniesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(companiesProvider);
    return ElevateOnScroll(builder: (context, elevation) {
      return Scaffold(
        appBar: AppBar(
          elevation: elevation,
          title: Text(S.of(context).myCompanies),
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
                onPressed: ref.read(companiesProvider.notifier).fetch,
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
                    final company = data[index];
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
                                Text(S.of(context).companyStatus,
                                    style: captionStyle),
                                const Gap(16),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: Container(
                                      child: Text(
                                        company.getCompanyStatusString(),
                                        style: valueStyle?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              company.getCompanyStatusColor(),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: company
                                            .getCompanyStatusColor()
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
                            if (company.name != null) ...[
                              Text(S.of(context).companyName,
                                  style: captionStyle),
                              const Gap(8),
                              Text(company.name!,
                                  style: valueStyle?.copyWith(height: 1.4)),
                              const Divider(height: 24),
                            ],
                            if (company.companyNo != null) ...[
                              Text(
                                S.of(context).companyNo,
                                style: captionStyle,
                              ),
                              const Gap(8),
                              Text(company.companyNo!,
                                  style: valueStyle?.copyWith(height: 1.4)),
                              const Divider(height: 24),
                            ],
                            LabelValueRow(
                              label: S.of(context).commercialRegisteryOfficeName,
                              value: company.commercialRegistryOfficeName ?? '',
                            ),
                            const Divider(height: 24),
                            LabelValueRow(
                              label: S.of(context).notary,
                              value: company.notaryName ?? '',
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
