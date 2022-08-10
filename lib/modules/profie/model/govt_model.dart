import 'package:flutter/material.dart';

import '../../../config/app_startup.dart';
import '../../../shared/navigation/navigation_service.dart';
import '../route/routes.dart';

class GovtItem {
  final String title;

  final VoidCallback onTap;

  const GovtItem({required this.title, required this.onTap});

  static List<GovtItem> loadGovtItem1(context) {
    return <GovtItem>[
      GovtItem(
          title: "National ID",
          onTap: () {
            serviceLocator<NavigationService>()
                .to(routeName: ProfileRoutes.uploadNationalId);
          }),
      GovtItem(title: "International Passport", onTap: () {}),
      GovtItem(title: "Driver’s License", onTap: () {}),
    ];
  }

  static List<GovtItem> loadGovtItem2(context) {
    return <GovtItem>[
      GovtItem(title: "Electricity Bill", onTap: () {}),
      GovtItem(title: "Water Bill", onTap: () {}),
      GovtItem(title: "Rental Agreement", onTap: () {}),
      GovtItem(title: "Bank Statement", onTap: () {}),
    ];
  }
}
