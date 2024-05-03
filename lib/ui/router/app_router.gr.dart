// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    ScannerRoute.name: (routeData) {
      final args = routeData.argsAs<ScannerRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ScannerPage(
              key: args.key,
              cameraPermissionGranted: args.cameraPermissionGranted));
    },
    ScannerResultRoute.name: (routeData) {
      final args = routeData.argsAs<ScannerResultRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ScannerResultPage(key: args.key, code: args.code));
    },
    CompanyFinderRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CompanyFinderPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LoginPage(key: args.key, firstLaunch: args.firstLaunch));
    },
    NotificationsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NotificationsPage());
    },
    CompaniesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CompaniesPage());
    },
    MemberShipCheckerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MemberShipCheckerPage());
    },
    TransactionFinderRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TransactionFinderPage());
    },
    TransactionsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TransactionsPage());
    },
    BusinessNameRequestsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const BusinessNameRequestsPage());
    },
    CompanyRegisterRequestsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CompanyRegisterRequestsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(ScannerRoute.name, path: '/scanner-page'),
        RouteConfig(ScannerResultRoute.name, path: '/scanner-result-page'),
        RouteConfig(CompanyFinderRoute.name, path: '/company-finder-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(NotificationsRoute.name, path: '/notifications-page'),
        RouteConfig(CompaniesRoute.name, path: '/companies-page'),
        RouteConfig(MemberShipCheckerRoute.name,
            path: '/member-ship-checker-page'),
        RouteConfig(TransactionFinderRoute.name,
            path: '/transaction-finder-page'),
        RouteConfig(TransactionsRoute.name, path: '/transactions-page'),
        RouteConfig(BusinessNameRequestsRoute.name,
            path: '/business-name-requests-page'),
        RouteConfig(CompanyRegisterRequestsRoute.name,
            path: '/company-register-requests-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ScannerPage]
class ScannerRoute extends PageRouteInfo<ScannerRouteArgs> {
  ScannerRoute({Key? key, required bool cameraPermissionGranted})
      : super(ScannerRoute.name,
            path: '/scanner-page',
            args: ScannerRouteArgs(
                key: key, cameraPermissionGranted: cameraPermissionGranted));

  static const String name = 'ScannerRoute';
}

class ScannerRouteArgs {
  const ScannerRouteArgs({this.key, required this.cameraPermissionGranted});

  final Key? key;

  final bool cameraPermissionGranted;

  @override
  String toString() {
    return 'ScannerRouteArgs{key: $key, cameraPermissionGranted: $cameraPermissionGranted}';
  }
}

/// generated route for
/// [ScannerResultPage]
class ScannerResultRoute extends PageRouteInfo<ScannerResultRouteArgs> {
  ScannerResultRoute({Key? key, required String code})
      : super(ScannerResultRoute.name,
            path: '/scanner-result-page',
            args: ScannerResultRouteArgs(key: key, code: code));

  static const String name = 'ScannerResultRoute';
}

class ScannerResultRouteArgs {
  const ScannerResultRouteArgs({this.key, required this.code});

  final Key? key;

  final String code;

  @override
  String toString() {
    return 'ScannerResultRouteArgs{key: $key, code: $code}';
  }
}

/// generated route for
/// [CompanyFinderPage]
class CompanyFinderRoute extends PageRouteInfo<void> {
  const CompanyFinderRoute()
      : super(CompanyFinderRoute.name, path: '/company-finder-page');

  static const String name = 'CompanyFinderRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key, bool firstLaunch = false})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, firstLaunch: firstLaunch));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.firstLaunch = false});

  final Key? key;

  final bool firstLaunch;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, firstLaunch: $firstLaunch}';
  }
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications-page');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [CompaniesPage]
class CompaniesRoute extends PageRouteInfo<void> {
  const CompaniesRoute() : super(CompaniesRoute.name, path: '/companies-page');

  static const String name = 'CompaniesRoute';
}

/// generated route for
/// [MemberShipCheckerPage]
class MemberShipCheckerRoute extends PageRouteInfo<void> {
  const MemberShipCheckerRoute()
      : super(MemberShipCheckerRoute.name, path: '/member-ship-checker-page');

  static const String name = 'MemberShipCheckerRoute';
}

/// generated route for
/// [TransactionFinderPage]
class TransactionFinderRoute extends PageRouteInfo<void> {
  const TransactionFinderRoute()
      : super(TransactionFinderRoute.name, path: '/transaction-finder-page');

  static const String name = 'TransactionFinderRoute';
}

/// generated route for
/// [TransactionsPage]
class TransactionsRoute extends PageRouteInfo<void> {
  const TransactionsRoute()
      : super(TransactionsRoute.name, path: '/transactions-page');

  static const String name = 'TransactionsRoute';
}

/// generated route for
/// [BusinessNameRequestsPage]
class BusinessNameRequestsRoute extends PageRouteInfo<void> {
  const BusinessNameRequestsRoute()
      : super(BusinessNameRequestsRoute.name,
            path: '/business-name-requests-page');

  static const String name = 'BusinessNameRequestsRoute';
}

/// generated route for
/// [CompanyRegisterRequestsPage]
class CompanyRegisterRequestsRoute extends PageRouteInfo<void> {
  const CompanyRegisterRequestsRoute()
      : super(CompanyRegisterRequestsRoute.name,
            path: '/company-register-requests-page');

  static const String name = 'CompanyRegisterRequestsRoute';
}
