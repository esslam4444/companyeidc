import 'package:auto_route/auto_route.dart';
import 'package:companyeidc/ui/router/app_router.dart';
import 'package:companyeidc/ui/shared/shared_prefs_notifier.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dependencies/di_config.dart';
import 'generated/l10n.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjection();
  await Firebase.initializeApp();
  final FCMtoken = await FirebaseMessaging.instance.getToken();
  print('FFFFFFFCCCCCCMMMMM tteeookken $FCMtoken');
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  firebaseMessaging.requestPermission(sound: true, badge: true, alert: true);

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

const primaryColor = Color(0xFFbc8c46);
const backgroundColor = Color(0xfff8f3f1);

class App extends ConsumerStatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  final _appRouter = AppRouter();
  final _initialRoutes = <PageRouteInfo>[const HomeRoute()];

  @override
  void initState() {
    super.initState();
    if (ref.read(firstLaunchPrefProvider)) {
      _initialRoutes.add(LoginRoute(firstLaunch: true));
      ref.read(firstLaunchPrefProvider.notifier).update(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(
      fontFamily: 'primaryFont',
      primaryColor: primaryColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: Colors.amber,
      ),
      scaffoldBackgroundColor: backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      appBarTheme: const AppBarTheme(
        color: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        titleTextStyle: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: 'primaryFont',
        ),
      ),
    );
    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(
        initialRoutes: _initialRoutes,
        navigatorObservers: () => [
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'ar'),
        // Locale.fromSubtags(languageCode: 'en'),
      ],
      locale: const Locale.fromSubtags(languageCode: 'ar'),
      debugShowCheckedModeBanner: false,
      theme: themeData,
    );
  }
}
