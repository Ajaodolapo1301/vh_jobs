import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/utils/colors.dart';

class SettingTile extends StatefulWidget {
  final String leadingIcon;
  final String? titleText;
  final String? subTitleText;
  final VoidCallback? onTap;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;

  const SettingTile(
      {Key? key,
      required this.leadingIcon,
      this.subTitleText,
      this.titleText,
      this.onTap,
      this.titleTextStyle,
      this.subTitleTextStyle})
      : super(key: key);

  @override
  State<SettingTile> createState() => _SettingTileState();
}

class _SettingTileState extends State<SettingTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.h),
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.vhBrown),
                        child: SvgPicture.asset(
                          widget.leadingIcon,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        widget.titleText!,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.2),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15.sp,
                    color: AppColors.vhBlue,
                  )
                ]),
          ),
        ),
      ],
    );

    // ListTile(
    //     onTap: widget.onTap,
    //     // contentPadding: EdgeInsets.symmetric(horizontal: 23.w),
    //     // minLeadingWidth: 12.w,
    //     leading: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Container(
    //           height: 32.h,
    //           width: 32.w,
    //           decoration: BoxDecoration(
    //               shape: BoxShape.circle, color: Color(0xffF4F4F4)),
    //           child: SvgPicture.asset(
    //             widget.leadingIcon,
    //             fit: BoxFit.scaleDown,
    //           ),
    //         ),
    //       ],
    //     ),
    //     title: Text(widget.titleText!,
    //         style: widget.titleTextStyle ??
    //             Theme.of(context)
    //                 .textTheme
    //                 .titleMedium
    //                 ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400)),
    //     trailing: Icon(
    //       Icons.arrow_forward_ios_sharp,
    //     )
    //
    //     // SvgPicture.asset(
    //     //   AssetResources.FORWARD_ICON,
    //     //   height: 20.h,
    //     //   width: 20.w,
    //     //   fit: BoxFit.scaleDown,
    //     // ),
    //     );
  }
}
