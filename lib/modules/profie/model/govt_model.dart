import 'package:flutter/material.dart';

class GovtItem {
  final String title;

  final VoidCallback onTap;

  const GovtItem({required this.title, required this.onTap});

  static List<GovtItem> loadGovtItem1(context) {
    return <GovtItem>[
      GovtItem(title: "National ID", onTap: () {}),
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
