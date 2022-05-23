import 'package:flutter/material.dart';
import 'package:vh_jobs/modules/auth/root.dart';
import 'package:vh_jobs/modules/auth/route/routes.dart';
import 'package:vh_jobs/modules/profie/route/routes.dart';
import 'package:vh_jobs/modules/profie/widget/wallet/add_wallet.dart';
import 'package:vh_jobs/modules/profie/widget/wallet/select_card.dart';
import 'package:vh_jobs/modules/profie/widget/wallet/transaction_history.dart';
import 'package:vh_jobs/modules/root/root.dart';
import 'package:vh_jobs/modules/root/route/routes.dart';
import 'package:vh_jobs/modules/root/widgets/bottom_nav.dart';
import 'package:vh_jobs/shared/navigation/animations/slide_up.dart';

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


    case AuthRoutes.root2:
      return FadeRoute(
        page: const SignUpPage(),
      );

  //  Root
    case RootRoutes.home:
      Tabs currentTab = Tabs.home;
      return SlideUpRoute(
          page: RootWidget(
            currentTab: currentTab,
          ));

    case ProfileRoutes.addWallet:
      return SlideUpRoute(page: const AddWallet());

    case ProfileRoutes.selectCard:
      return SlideUpRoute(page: const SelectCard());

    case ProfileRoutes.transactionHistory:
      return SlideUpRoute(page: const TransactionHistory());
  }
};
