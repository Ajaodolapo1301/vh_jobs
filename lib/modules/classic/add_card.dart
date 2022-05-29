// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/modules/classic/route/root_classic.dart';
import 'package:vh_jobs/shared/widgets/button.dart';

import '../../config/app_startup.dart';
import '../../shared/navigation/navigation_service.dart';
import '../../shared/style/font_style.dart';
import '../../shared/utils/asset_images.dart';
import '../../shared/utils/colors.dart';
import '../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../shared/widgets/forms/input_text.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.vhBlue,
                  borderRadius: BorderRadius.circular(5.r)),
              height: 180.h,
              width: double.infinity,
              // padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 17.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20.w, top: 10.h),
                          child: SvgPicture.asset(
                            AssetResources.logoCard,
                            height: 24.h,
                          ),
                        ),
                        SvgPicture.asset(
                          AssetResources.visa,
                          height: 49.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "**** **** **** 1234",
                            style: kBold400.copyWith(
                                color: Colors.white, fontSize: 20.sp),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Credit/Debit card",
                                style: kBold400.copyWith(
                                    color: Colors.white, fontSize: 15.sp),
                              ),
                              Text(
                                "Exp 01/23",
                                style: kBold300.copyWith(
                                    color: Colors.white, fontSize: 15.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "John Doe",
                                style: kBold300.copyWith(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                              SvgPicture.asset(
                                AssetResources.visa,
                                height: 20.h,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.w,
            ),
            Text(
              'Card Details',
              style: TextStyle(
                  color: const Color(0xff1C71B7),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w700),
            ),
            Divider(
              color: const Color(0xffB3D0E7),
              thickness: 1.sp,
            ),
            SizedBox(
              height: 20.w,
            ),
            Column(
              children: [
                InputText(
                  labelText: 'John Doe',
                  headerText: "Cardholder Name",
                ),
                InputText(
                  headerText: 'Card Number',
                  labelText: "XXX  XXXX  XXXX  7115 ",
                ),
                Row(
                  children: [
                    Expanded(
                      child: InputText(
                        headerText: 'Expiry',
                        labelText: "MM/YY",
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: InputText(
                        headerText: 'CVV',
                        labelText: "XXX",
                      ),
                    )
                  ],
                )
              ],
            ),
            VhJobsButton(
                text: "Add card",
                onPressed: () {
                  serviceLocator<NavigationService>()
                      .to(routeName: ClassicRoutes.checkout);
                }),
          ],
        ),
      )),
    );
  }
}
