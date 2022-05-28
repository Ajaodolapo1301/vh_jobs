import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../shared/style/font_style.dart';
import '../../../../../shared/utils/asset_images.dart';
import '../../../../../shared/utils/colors.dart';

class WalletBalanceWidget extends StatefulWidget {
  final Color? color;
  final String? balance;
  final String? backgroundImage;
  final VoidCallback? onPress;

  WalletBalanceWidget(
      {this.onPress, this.balance, this.color, this.backgroundImage});

  @override
  State<WalletBalanceWidget> createState() => _WalletBalanceWidgetState();
}

class _WalletBalanceWidgetState extends State<WalletBalanceWidget> {
  bool showFirstWidget = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: widget.color),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                AssetResources.cardImage,
                fit: BoxFit.fill,
                // width: 120,
                // height: 120,
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            showFirstWidget = !showFirstWidget;
                          });
                        },
                        child: SvgPicture.asset(
                          showFirstWidget
                              ? AssetResources.openEye
                              : AssetResources.closedEye,
                          color: Colors.white,
                          width: 20.w,
                        ),
                      ),
                    ],
                  ),
                  Text("Available balance",
                      style: kBold400.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                  AnimatedCrossFade(
                    firstChild: Text(
                      "N12,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.sp,
                        fontFamily: '',
                        height: 1,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    secondChild: Image.asset(
                      AssetResources.secure,
                      height: 30,
                      width: 200.w,
                    ),
                    crossFadeState: showFirstWidget
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 58.w,
                          height: 19.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                              child: Text(
                            "Top up",
                            style: TextStyle(
                                color: AppColors.vhBlue,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
