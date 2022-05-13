import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class VhJobsButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final double? fontSize;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? color, borderColor, textColor;
  final double? height;
  final double? width;
  const VhJobsButton(
      {Key? key,
      this.onPressed,
      this.child,
      this.text,
      this.fontSize,
      this.color,
      this.borderColor,
      this.textColor,
      this.verticalPadding,
      this.horizontalPadding,
      this.height,
      this.width})
      : assert(text != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: color ?? AppColors.vhBlue,
            onSurface: color ?? AppColors.vhBlue,
            elevation: 0.0,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(
                vertical: verticalPadding ?? 15.h,
                horizontal: horizontalPadding ?? 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
              side: BorderSide(
                  color: onPressed == null
                      ? Colors.transparent
                      : borderColor ?? color ?? AppColors.vhBlue as Color),
            ),
            minimumSize: Size(width ?? double.infinity, height ?? 45.h)),
        child: text != null ? Text(text!, style: buttonTextStyle()) : child);
  }

  buttonTextStyle() {
    return TextStyle(
      fontSize: fontSize ?? 16.sp,
      color: textColor ?? borderColor ?? Colors.white,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
    );
  }
}

Widget visibilityToggle(Function? onToggle, bool _isHidden) => InkWell(
      onTap: onToggle != null ? () => onToggle() : null,
      child: Icon(_isHidden ? Icons.visibility : Icons.visibility_off,
          color: AppColors.vhBlue),
    );
