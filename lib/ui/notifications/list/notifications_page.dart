import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/shared/elevate_on_scroll.dart';
import 'package:companyeidc/ui/shared/indicator_widget.dart';
import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifications_controller.dart';

class NotificationsPage extends ConsumerWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(notificationsProvider);
    return ElevateOnScroll(
      builder: (context, elevation) => Scaffold(
        appBar: AppBar(
          elevation: elevation,
          title: Text(S.of(context).notifications),
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
                onPressed: ref.read(notificationsProvider.notifier).fetch,
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
                    final notification = data[index];
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
                        title: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            notification.title,
                            style: const TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            notification.description ?? '',
                            style: const TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
