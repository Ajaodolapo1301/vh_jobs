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
  final Color? backgroundColor;
  final bool centerTitle;
  final double? elevation;
  final Color? shadowColor;
  final double? appHeight;
  final double? leadingWidth;
  final bool gradientAppBar;
  const VhjobsAppBar(
      {Key? key,
      this.leadingIcon,
      this.titleText,
      this.titleWidget,
      this.trailing,
      this.centerTitle = true,
      this.elevation = 2,
      this.gradientAppBar = false,
      this.shadowColor = Colors.white,
      this.backgroundColor = Colors.white,
      this.leadingWidth = 56.0,
      this.appHeight = 60})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return gradientAppBar
        ? AppBar(
            elevation: 2,
            shadowColor: shadowColor,
            backgroundColor: backgroundColor,
            leadingWidth: leadingWidth,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset(0.0, 0.5),
                    end: FractionalOffset(0.9, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                    colors: <Color>[
                      Color(0xff1C71B7),
                      Color(0xff09263D),
                    ]),
              ),
            ),
            toolbarHeight: 94.h,
            automaticallyImplyLeading: false,
            title: titleText == null && !centerTitle
                ? const SizedBox()
                : centerTitle && titleText == null
                    ? SvgPicture.asset(
                        AssetResources.smallLogo,
                        width: 30.w,
                        height: 25.h,
                        color: Colors.white,
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
            // centerTitle: centerTitle,
            leading: leadingIcon ??
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // GetIt.I.get<NavigationService>().back();
                  },
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                ),
            actions: [trailing ?? const SizedBox()],
          )
        : AppBar(
            elevation: 2,
            shadowColor: shadowColor,
            backgroundColor: backgroundColor,
            leadingWidth: leadingWidth, // <-- Use this

            toolbarHeight: 94.h,
            automaticallyImplyLeading: false,
            title: titleText == null && !centerTitle
                ? const SizedBox()
                : centerTitle && titleText == null
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
            // centerTitle: centerTitle,
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
