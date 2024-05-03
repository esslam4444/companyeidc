import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/shared/models/member_ship_check_results.dart';
import 'package:companyeidc/ui/memebership_checker/membership_checker_action.dart';
import 'package:companyeidc/ui/shared/elevate_on_scroll.dart';
import 'package:companyeidc/ui/shared/indicator_widget.dart';
import 'package:companyeidc/ui/shared/label_row_widget.dart';
import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class MemberShipCheckerPage extends ConsumerWidget {
  const MemberShipCheckerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(membershipCheckerProvider);
    return ElevateOnScroll(builder: (context, elevation) {
      return Scaffold(
        appBar: AppBar(
          elevation: elevation,
          title: const Text('عضويات برقمي الوطني'),
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
                          ref.read(membershipCheckerProvider.notifier).fetch,
                      child: Text(S.of(context).retry),
                    ),
                  ),
                ),
            orElse: () => const LoadingWidget(),
            loaded: (data, _) {
              final captionStyle = Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(height: 1.4, fontSize: 15);
              final valueStyle = Theme.of(context).textTheme.subtitle1;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      margin:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                            Text(S.of(context).fullName, style: captionStyle),
                            const Gap(8),
                            Text(data.arabicFullName,
                                style: valueStyle?.copyWith(height: 1.4)),
                            const Divider(height: 24),
                            if (data.nationalNo?.isNotEmpty == true) ...[
                              LabelValueRow(
                                label: S.of(context).nationialNo,
                                value: data.nationalNo,
                              ),
                              const Divider(height: 24),
                            ],
                            if (data.registerNo?.isNotEmpty == true)
                              LabelValueRow(
                                label: S.of(context).registerNo,
                                value: data.registerNo,
                              ),
                            const Gap(8),
                          ],
                        ),
                      ),
                    ),
                    StringListView(
                      title: S.of(context).memeberOfCompany,
                      items: List<String>.of(
                        data.memberList.map((e) => e.companyName),
                      ),
                    ),
                    StringListView(
                      title: S.of(context).contributorOfcompany,
                      items: List<String>.of(
                        data.contributorList.map((e) => e.companyName),
                      ),
                    ),
                    StringListView(
                      title: S.of(context).IworkFor,
                      items: List<String>.of(
                        data.employeeList.map((e) => e.companyName),
                      ),
                    )
                  ],
                ),
              );
            }
            ),
      );
    });
  }
}

class StringListView extends StatelessWidget {
  final List<String> items;
  final String title;

  const StringListView({Key? key, required this.items, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (items.isEmpty)
                    Center(
                        child: Text(
                      S.of(context).nothingToShow,
                      style: Theme.of(context).textTheme.caption,
                    ))
                  else
                    for (final item in items) ...[
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 12,
                            color: Theme.of(context).primaryColor,
                          ),
                          const Gap(8),
                          Text(item),
                        ],
                      ),
                      if (item != items.last )
                        const Divider(
                          height: 12,
                        )
                    ],
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
