

import 'dart:io';


import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';


import '../../navigation/navigation_service.dart';
class Header extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final TextStyle? textStyle;
  final VoidCallback? preferredActionOnBackPressed;
  final Widget? suffix;
  final bool showPrefix;
  const Header({
    Key? key,
    this.text,
    this.showPrefix = true,
    this.textStyle,
    this.suffix,
    this.textColor,

    this.preferredActionOnBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     showPrefix ?    IconButton(
          icon: Platform.isIOS ?  Icon(
            Icons.arrow_back_ios_rounded,
            size: 18.sp,
            color: textColor ?? Colors.black,
          ) : Icon(Icons.arrow_back_sharp,
            size: 18.sp,
            color: textColor ?? Colors.black,),
          onPressed: () {
            preferredActionOnBackPressed != null
                ? preferredActionOnBackPressed!()
                : GetIt.I<NavigationService>().back();


          },
        ) :
    IconButton(icon:      Icon(
      Icons.arrow_back_ios_rounded,
      size: 18.sp,
      color: Colors.transparent,
    ), onPressed: () {  },) ,


        const Spacer(),
        Text(
          text!,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          // textAlign: TextAlign.left,
          style:

          textStyle ??  TextStyle(
            color: textColor ?? Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp
          ),
        ),
        const Spacer(),
        suffix ??
        Opacity(
          opacity: 0,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18.sp,
            ),
            onPressed: null,
          ),
        ),
      ],
    );
  }
}
