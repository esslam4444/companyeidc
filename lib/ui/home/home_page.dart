import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/auth/account_controller.dart';
import 'package:companyeidc/ui/notifications/notification_icon.dart';
import 'package:companyeidc/ui/router/app_router.dart';
import 'package:companyeidc/ui/shared/elevate_on_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:permission_handler/permission_handler.dart';

import '../auth/account_state.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(accountProvider);
    final controller = ref.read(accountProvider.notifier);

    return ElevateOnScroll(builder: (context, elevation) {
      return Scaffold(
        appBar: AppBar(
          elevation: elevation,
          leading: authState.isAuthenticated
              ? IconButton(
                  splashRadius: 22,
                  iconSize: 24,
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              actionsPadding: const EdgeInsets.symmetric(horizontal: 8),
                              content: Text(S.of(context).logOutWarningMessage),
                              actions: [
                                OutlinedButton(
                                  onPressed: context.popRoute,
                                  child: Text(S.of(context).no),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    context.popRoute();
                                    controller.logout();
                                  },
                                  child: Text(S.of(context).yes),
                                ),
                                //
                              ],
                            ));
                  },
                )
              : const SizedBox(),
          centerTitle: false,
          ///=========================================================================
          title: Text(authState.loadedOption is AccountStateLoaded
              ? S.of(context).name((authState.loadedOption as AccountStateLoaded).user.firstName)
              : ''),
///==================================================


          actions: [
            if (authState.isAuthenticated) const NotificationsIcon(),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 24,
                ),
                child: Image.asset(
                  Images.logo,
                  width: 140,
                ),
              ),
              Text(
                S.of(context).homeTitle,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Gap(16),
              if (!authState.isAuthenticated)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      context.pushRoute(LoginRoute());
                    },
                    icon: const Icon(Icons.account_circle_rounded),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                    label: Text(S.of(context).login),
                  ),
                ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _ActionTile(
                    svgAsset: Svgs.qr,
                    label: S.of(context).scanUnitedNumber,
                    onTap: () async {
                      context.pushRoute(ScannerRoute(
                        cameraPermissionGranted: await Permission.camera.status.isGranted,
                      ));
                    },
                  ),
                  _ActionTile(
                    svgAsset: Svgs.search,
                    label: S.of(context).searchCompanyNames,
                    onTap: () => context.pushRoute(const CompanyFinderRoute()),
                  ),
                  _ActionTile(
                    svgAsset: Svgs.noData,
                    label: S.of(context).transactionInquery,
                    onTap: () => context.pushRoute(const TransactionFinderRoute()),
                  ),
                  if (authState.isAuthenticated) ...[
                    _ActionTile(
                      svgAsset: Svgs.identity,
                      label: S.of(context).memeberShipInquery,
                      onTap: () => context.pushRoute(const MemberShipCheckerRoute()),
                    ),
                    _ActionTile(
                      svgAsset: Svgs.companies,
                      label: S.of(context).myCompannies,
                      onTap: () => context.pushRoute(const CompaniesRoute()),
                    ),
                    _ActionTile(
                      svgAsset: Svgs.nameRequest,
                      label: S.of(context).myBussinessNames,
                      onTap: () => context.pushRoute(const BusinessNameRequestsRoute()),
                    ),
                    _ActionTile(
                      svgAsset: Svgs.companyRegister,
                      label: S.of(context).companyRegisterRequests,
                      onTap: () => context.pushRoute(const CompanyRegisterRequestsRoute()),
                    ),
                    _ActionTile(
                      svgAsset: Svgs.transactions,
                      label: S.of(context).myTransactions,
                      onTap: () => context.pushRoute(const TransactionsRoute()),
                    ),
                  ],
                ],
              ),
              const Gap(32),
              Text(
                S.of(context).copyRightsMessage,
                style: Theme.of(context).textTheme.caption,
              ),
              Gap(max(24, MediaQuery.of(context).padding.bottom))
            ],
          ),
        ),
      );
    });
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({
    Key? key,
    required this.label,
    required this.svgAsset,
    this.onTap,
  }) : super(key: key);

  final String label;
  final String svgAsset;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgAsset,
                width: 64,
                height: 64,
                color: Theme.of(context).primaryColor,
              ),
              const Gap(24),
              ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 40),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(height: 1.3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
