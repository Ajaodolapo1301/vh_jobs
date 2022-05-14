import 'package:flutter/material.dart';

import '../../modules/onboarding/route/routes.dart';
import '../../modules/onboarding/welcome_screen.dart';
import '../../modules/onboarding/widget/splash_screen.dart';
import '../../modules/orders/root.dart';
import '../../modules/orders/root2.dart';
import '../../modules/orders/route/routes.dart';
import 'animations/fade_route.dart';

// ignore: prefer_function_declarations_over_variables
var routes = (RouteSettings settings) {
  switch (settings.name) {
    case OnboardingRoutes.root:
      return FadeRoute(
        page: const SplashScreen(),
      );

    case OnboardingRoutes.onboardingScreen:
      return FadeRoute(
        page: const SplashScreen(),
      );

    case OnboardingRoutes.welcomePage:
      return FadeRoute(
        page: const WelcomePage(),
      );




  //    Order
    case OrderRoutes.root:
      return FadeRoute(
        page: const Orders(),
      );




    case OrderRoutes.root2:
      return FadeRoute(
        page: const Orders2(),
      );

  }
};
