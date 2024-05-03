import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:badges/badges.dart' as badges;
import 'package:companyeidc/ui/notifications/list/notifications_controller.dart';
import 'package:companyeidc/ui/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

class NotificationsIcon extends ConsumerWidget {
  const NotificationsIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    ///=================================


    final unreadCount = ref.watch<int>(
      notificationsProvider.select((value) {
        if (value.loadedOption is Some) {
          final option = value.loadedOption as Some;
          return option.value.where((n) => n.status == 'unseen').length;
        }
        return 0;
      }),
    );


///=========================================


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IconButton(
        splashRadius: 22,
        iconSize: 28,
        /// changed Badge <<--->> badges.Badge ===================and added an extra import above==================
        icon:  badges.Badge(
          position: BadgePosition.topStart(start: -4, top: -8),
          badgeContent: Text(
            unreadCount.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Roboto',
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
         showBadge: unreadCount > 0,
          elevation: 0,
          child: const Icon(Icons.notifications_none_outlined),
        ),
        onPressed: () {
          context.pushRoute(const NotificationsRoute());
        },
      ),
    );
  }
}
