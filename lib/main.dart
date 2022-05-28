import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'config/app_startup.dart';
import 'modules/onboarding/route/routes.dart';
import 'shared/navigation/navigation_service.dart';
import 'shared/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await AppStartUp().setUp();
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context) {
        return MaterialApp(
          localizationsDelegates: const [
            // S.delegate,
            // GlobalMaterialLocalizations.delegate,
            // GlobalWidgetsLocalizations.delegate,
            // GlobalCupertinoLocalizations.delegate
          ],
          // supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: "Vh jobs",
          themeMode: ThemeMode.light,
          theme: ThemeData(
            fontFamily: "Circular",
          ),
          // ignore: prefer_const_literals_to_create_immutables
          navigatorObservers: [
            // FirebaseAnalyticsObserver(
            //   analytics: GetIt.I<AnalyticService>().instance,
            // ),
          ],
          builder: (context, widget) {
            ScreenUtil.init(context);
            return MediaQuery(
              data: MediaQuery.of(context),
              child: widget!,
            );
          },
          navigatorKey: GetIt.I<NavigationService>().navigatorKey,
          initialRoute: OnboardingRoutes.root,
          onGenerateRoute: routes,
        );
      },
    );
  }
}
