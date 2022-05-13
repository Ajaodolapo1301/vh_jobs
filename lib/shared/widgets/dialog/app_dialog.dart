import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

appSuccessDialog({
  required BuildContext context,
  required double height,
  // required String title,
  // required String subtitle,
  bool hasClip = false,
  required Widget content,
}) {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: AppColors.goMechoBlue50.withOpacity(0.4),
    transitionDuration: const Duration(milliseconds: 300),
    context: context,
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          height: height,
          width: 315.w,
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 15.h),
          // padding: EdgeInsets.fromLTRB(22.w, 20.h, 22.w, 24.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            children: [
              content,
            ],
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(anim),
        child: child,
      );
    },
  );
}
