import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/utils/asset_images.dart';
import '../../../shared/utils/colors.dart';

enum Tabs { home, appointment, order, profile }

extension TabExt on Tabs {
  String get name {
    switch (this) {
      case Tabs.home:
        return "Home";
      case Tabs.appointment:
        return "Appointments";
      case Tabs.order:
        return "Orders";
      case Tabs.profile:
        return "Profile";

      default:
        return "";
    }
  }

  String get selectedIcon {
    switch (this) {
      case Tabs.home:
        return AssetResources.selectedHome;
      case Tabs.appointment:
        return AssetResources.selectedAppointment;
      case Tabs.order:
        return AssetResources.selectedOrder;
      case Tabs.profile:
        return AssetResources.selectedProfile;

      default:
        return "";
    }
  }

  String get unSelectedIcon {
    switch (this) {
      case Tabs.home:
        return AssetResources.unselectedHome;
      case Tabs.appointment:
        return AssetResources.unSelectedAppointment;
      case Tabs.order:
        return AssetResources.unSelectedOrder;
      case Tabs.profile:
        return AssetResources.unSelectedProfile;

      default:
        return "";
    }
  }
}

class BottomNav extends StatelessWidget {
  final Tabs currentTab;
  final ValueChanged<Tabs> didSelectTab;

  BottomNav({required this.currentTab, required this.didSelectTab});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Platform.isIOS ? 87.h : 65.h,
      child: BottomNavigationBar(
          currentIndex: Tabs.values.indexOf(currentTab),
          unselectedLabelStyle: inActiveTextStyle(),
          selectedLabelStyle: activeTextStyle(),
          backgroundColor: Colors.white.withOpacity(0.8),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.vhBlue,
          unselectedItemColor: AppColors.vhBlue,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            didSelectTab(Tabs.values.toList()[index]);
          },
          items: Tabs.values.map((tab) => _buildItem(tab, context)).toList()),
    );
  }

  BottomNavigationBarItem _buildItem(Tabs tab, BuildContext context) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          currentTab == tab ? tab.selectedIcon : tab.unSelectedIcon,
          height: 24.h,
          width: 24.w,
        ),
        label: '${tab.name}');
  }

  activeTextStyle() => TextStyle(
      fontSize: 12.sp,
      color: AppColors.vhBlue,
      fontWeight: FontWeight.w400,
      height: 1.4);
  inActiveTextStyle() => TextStyle(
      fontSize: 12.sp,
      color: AppColors.goMechoStroke,
      fontWeight: FontWeight.w400,
      height: 1.4);
}
