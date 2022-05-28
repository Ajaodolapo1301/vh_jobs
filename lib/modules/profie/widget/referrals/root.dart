import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/style/border_style.dart';
import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/button.dart';

class Referral extends StatefulWidget {
  const Referral({Key? key}) : super(key: key);

  @override
  _ReferralState createState() => _ReferralState();
}

class _ReferralState extends State<Referral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Referrals",
                style: kBold900,
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 157.h,
                    padding: EdgeInsets.all(15.h),
                    decoration: kDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My Cash Reward",
                                  style: kBold300.copyWith(fontSize: 15.sp),
                                ),
                                Text(
                                  "N1,000",
                                  style: kBold900,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 93.w,
                                height: 29.h,
                                decoration: BoxDecoration(
                                  color: AppColors.vhBlue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                    child: Text(
                                  "Cash out",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400),
                                )),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Divider(color: AppColors.vhBlue),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Total referred",
                                  style: kBold700.copyWith(fontSize: 11.sp),
                                ),
                                Text(
                                  "0",
                                  style: kBold900.copyWith(
                                      color: AppColors.vhBlue),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Completed Referrals",
                                  style: kBold700.copyWith(fontSize: 11.sp),
                                ),
                                Text(
                                  "0",
                                  style: kBold900.copyWith(
                                      color: AppColors.vhBlue),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SvgPicture.asset(AssetResources.referral),
                  SizedBox(
                    height: 14.h,
                  ),
                  SizedBox(
                    width: 233.w,
                    child: Text(
                      "Get up to N1,000 when your referral puchase any of our services",
                      textAlign: TextAlign.center,
                      style: kBold700.copyWith(fontSize: 15.sp),
                    ),
                  ),
                  VhJobsButton(
                      text: "Http://vhjobs.com.link/RTfgh",
                      onPressed: () {
                        //  serviceLocator<NavigationService>().to(routeName: AuthRoutes.root2);
                      }),
                  SizedBox(
                    height: 14.h,
                  ),
                  VhJobsButton(
                      type: ButtonType.outlined,
                      text: "View history",
                      textColor: Colors.black.withOpacity(0.5),
                      onPressed: () {
                        //  serviceLocator<NavigationService>().to(routeName: AuthRoutes.root2);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
