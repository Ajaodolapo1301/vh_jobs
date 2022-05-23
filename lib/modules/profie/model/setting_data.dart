import 'package:flutter/material.dart';

import '../../../shared/utils/asset_images.dart';

class SettingItem {
  final String title;
  final String image;
  final VoidCallback onTap;

  const SettingItem(
      {required this.title, required this.image, required this.onTap});
}

class SettingItems {
  static List<SettingItem> loadSettingItem(context) {
    return <SettingItem>[
      SettingItem(
          title: "Transaction History",
          image: AssetResources.biCredit,
          onTap: () {}),
      SettingItem(
          title: "Payment Method",
          image: AssetResources.creditCard,
          onTap: () {}),
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
}
