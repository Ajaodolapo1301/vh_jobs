import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/asset_images.dart';
import '../../utils/colors.dart';

class VhjobsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingIcon;
  final String? titleText;
  final Widget? titleWidget;
  final Widget? trailing;
  final Color backgroundColor;
  final bool centerTitle;
  final double? elevation;
  final Color? shadowColor;
  final double? appHeight;
  final double? leadingWidth;

  const VhjobsAppBar(
      {Key? key,
      this.leadingIcon,
      this.titleText,
      this.titleWidget,
      this.trailing,
      this.centerTitle = true,
      this.elevation = 0,
      this.shadowColor = Colors.white,
      required this.backgroundColor,
      this.leadingWidth = 56.0,
      this.appHeight = 60})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      shadowColor: shadowColor,
      backgroundColor: backgroundColor,
      leadingWidth: leadingWidth, // <-- Use this

      toolbarHeight: 94.h,
      automaticallyImplyLeading: false,
      title: titleText == null && titleWidget == null
          ? const SizedBox()
          : titleWidget != null && titleText == null
              ? SvgPicture.asset(
                  AssetResources.smallLogo,
                  width: 30.w,
                  height: 25.h,
                )
              : Text(
                  titleText!,
                  style: backgroundColor == Colors.white
                      ? TextStyle(
                          fontSize: 18.sp,
                          color: AppColors.vhBlue,
                          fontWeight: FontWeight.w700,
                          height: 1.4)
                      : TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          height: 1.4),
                ),
      centerTitle: centerTitle,
      leading: leadingIcon ??
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              // GetIt.I.get<NavigationService>().back();
            },
            icon: SvgPicture.asset(AssetResources.BACK_ICON),
          ),
      actions: [trailing ?? const SizedBox()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appHeight!);
}
