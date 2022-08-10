import 'package:flutter/material.dart';

import '../../../config/app_startup.dart';
import '../../../shared/navigation/navigation_service.dart';
import '../../../shared/utils/asset_images.dart';
import '../route/routes.dart';

class SettingItem {
  final String title;
  final String image;
  final VoidCallback onTap;

  const SettingItem(
      {required this.title, required this.image, required this.onTap});
}

class SettingItems {
  static List<SettingItem> loadSettingItem1(context) {
    return <SettingItem>[
      SettingItem(
          title: "Transaction History",
          image: AssetResources.biCredit,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.transactionHistory);
          }),
      SettingItem(
          title: "Payment Method",
          image: AssetResources.creditCard,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.paymentMethod);
          }),
    ];
  }

  static List<SettingItem> loadSettingItem2(context) {
    return <SettingItem>[
      SettingItem(
          title: "Personal Information",
          image: AssetResources.userCircle,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.profileInfo);
          }),
      SettingItem(
          title: "Manage Address",
          image: AssetResources.addressBook,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.address);
          }),

      SettingItem(
          title: "Security",
          image: AssetResources.padlock,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.security);
          }),
      SettingItem(
          title: "Identity Verification",
          image: AssetResources.security,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.identityVerification);
          }),
      SettingItem(
          title: "Review",
          image: AssetResources.review,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.identityVerification);
          }),
      SettingItem(
          title: "Notification",
          image: AssetResources.notification,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.notificationScreen);
          }),

      // SettingItem(
      //     title: "Security",
      //     image: AssetResources.LOCK_ICON,
      //     onTap: () => GetIt.I
      //         .get<NavigationService>()
      //         .to(routeName: ChangePasswordRoute.changePassword)),
      // SettingItem(
      //     title: "Identity Verification",
      //     image: AssetResources.LOGOUT_ICON,
      //     onTap: () {
      //       showLogoutModal(context);
      //     })
    ];
  }

  static List<SettingItem> loadSettingItem3(context) {
    return <SettingItem>[
      SettingItem(
          title: "Referral",
          image: AssetResources.gift,
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.referral);
          }),
      SettingItem(
          title: "Credit Rewards", image: AssetResources.coins, onTap: () {}),
    ];
  }

  static List<SettingItem> loadSettingItem4(context) {
    return <SettingItem>[
      SettingItem(title: "FAQ", image: AssetResources.gift, onTap: () {}),
      SettingItem(
          title: "Feedback & Support",
          image: AssetResources.coins,
          onTap: () {}),
      SettingItem(
          title: "Terms of Service", image: AssetResources.gift, onTap: () {}),
      SettingItem(
          title: "Privacy Policy", image: AssetResources.coins, onTap: () {}),
    ];
  }
}
