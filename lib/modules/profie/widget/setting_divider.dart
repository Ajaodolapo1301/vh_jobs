import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/utils/colors.dart';

class SettingDivider extends StatelessWidget {
  final double? height;
  final Color? color;
  const SettingDivider({Key? key, this.height, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.goMechoGrey2,
      thickness: height ?? 1.h,
      height: height ?? 1.h,
    );
  }
}
