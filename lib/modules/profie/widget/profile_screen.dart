import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/modules/profie/widget/setting_card.dart';

import '../../../shared/utils/asset_images.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/widgets/button.dart';
import '../../../shared/widgets/cache_image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isPrepaid = false;
  bool hideAmount = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FDFF),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 23.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const ProfileCard(),
            ),
            SizedBox(height: 23.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Container(
                // height: 295.h,
                // width: 161.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                child: Material(
                  shadowColor: Colors.black26,
                  borderRadius: BorderRadius.circular(6.r),
                  child: Container(
                    padding: EdgeInsets.all(12.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Text(
                                  "Balance",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Text("N ****"),
                                InkWell(
                                  child: hideAmount
                                      ? Icon(
                                          Icons.remove_red_eye_sharp,
                                          size: 14.sp,
                                        )
                                      : Icon(
                                          Icons.remove_red_eye_sharp,
                                          size: 14.sp,
                                        ),
                                  onTap: () {
                                    setState(() {
                                      hideAmount = !hideAmount;
                                    });
                                  },
                                ),
                              ]),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 58.w,
                                  height: 19.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.vhBlue,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Top up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                              )
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 51.h,
              color: AppColors.vhBrown,
              child: Row(children: [
                Text(
                  "Switch to service provider",
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 0.5,
                  child: CupertinoSwitch(
                      activeColor: AppColors.vhBlue,
                      trackColor: AppColors.vhBlue.withOpacity(0.5),
                      value: isPrepaid,
                      onChanged: (value) {
                        setState(() {
                          isPrepaid = value;
                        });
                      }),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const SettingCard(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const SettingCard2(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const SettingCard3(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const SettingCard4(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const VhJobsButton(
                type: ButtonType.outlined,
                text: "Log out",
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            VhCacheImage(
              height: 75.h,
              width: 75.h,
              borderRadius: 360,
              imgUrl: AssetResources.one,
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Doe",
                  style:
                      TextStyle(fontSize: 21.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Johndoe232@gmail.com",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.4,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
