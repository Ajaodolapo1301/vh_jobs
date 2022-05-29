import 'package:flutter/material.dart';
import 'package:vh_jobs/modules/appointments/appointment_chat.dart';
import 'package:vh_jobs/modules/appointments/appointment_details.dart';
import 'package:vh_jobs/modules/appointments/routes/route.dart';
import 'package:vh_jobs/modules/appointments/widgets/choose_service_provider.dart';
import 'package:vh_jobs/modules/appointments/widgets/meal_options.dart';

import '../../modules/auth/root.dart';
import '../../modules/auth/route/routes.dart';
import '../../modules/onboarding/root.dart';
import '../../modules/onboarding/route/routes.dart';
import '../../modules/onboarding/welcome_screen.dart';
import '../../modules/onboarding/widget/splash_screen.dart';
import '../../modules/orders/empty.dart';
import '../../modules/orders/root2.dart';
import '../../modules/orders/route/routes.dart';
import '../../modules/profie/route/routes.dart';
import '../../modules/profie/widget/manageAddress/add_address.dart';
import '../../modules/profie/widget/manageAddress/address_list.dart';
import '../../modules/profie/widget/manageAddress/root.dart';
import '../../modules/profie/widget/profile_info.dart';
import '../../modules/profie/widget/wallet/add_wallet.dart';
import '../../modules/profie/widget/wallet/select_card.dart';
import '../../modules/profie/widget/wallet/transaction_details.dart';
import '../../modules/profie/widget/wallet/transaction_history.dart';
import '../../modules/root/root.dart';
import '../../modules/root/route/routes.dart';
import '../../modules/root/widgets/bottom_nav.dart';
import 'animations/fade_route.dart';
import 'animations/slide_up.dart';

// ignore: prefer_function_declarations_over_variables
var routes = (RouteSettings settings) {
  switch (settings.name) {
    case OnboardingRoutes.root:
      return FadeRoute(
        page: const SplashScreen(),
      );

    case OnboardingRoutes.onboardingScreen:
      return FadeRoute(
        page: const OnboardingScreen(),
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
      return FadeRoute(page: const SelectCard());

    case ProfileRoutes.transactionHistory:
      return FadeRoute(page: const TransactionHistory());

    case ProfileRoutes.transactionDetails:
      return FadeRoute(page: const TransactionDetails());

    case ProfileRoutes.profileInfo:
      return FadeRoute(page: const ProfileInfo());

    case ProfileRoutes.address:
      return FadeRoute(page: const Address());

    case ProfileRoutes.addresslist:
      return FadeRoute(page: const AddressList());

    case ProfileRoutes.addAddress:
      return FadeRoute(page: const AddAddress());

    case AppointmentRoute.appointmentDetails:
      Map args = settings.arguments as Map;
      return FadeRoute(
          page: AppointmentDetailsScreen(
        appointment: args['appointment'],
      ));

    case AppointmentRoute.appointmentChooseProvider:
      return FadeRoute(page: const ChooseServiceProviderScreen());
    case AppointmentRoute.appointmentChat:
      return FadeRoute(page: const AppointmentChatScreen());
    case AppointmentRoute.appointmentMealOptions:
      return FadeRoute(page: const MealOptionsScreen());
  }
};
