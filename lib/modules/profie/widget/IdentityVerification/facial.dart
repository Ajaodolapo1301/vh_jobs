import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/widgets/button.dart';

import '../../../../config/app_startup.dart';
import '../../../../shared/navigation/navigation_service.dart';
import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../route/routes.dart';

class Facial extends StatefulWidget {
  const Facial({Key? key}) : super(key: key);

  @override
  _FacialState createState() => _FacialState();
}

class _FacialState extends State<Facial> {
  bool pinCode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Facial Verification",
                  style: kBold900,
                ),
                Text(
                  "This will be user to very your ID, center your face in the frame, your face will be capture automatically",
                  style: kBold300.copyWith(fontSize: 13.sp),
                ),
              ],
            ),
            SizedBox(
              height: 55.h,
            ),
            Center(
              child: Container(
                  height: 312.h,
                  width: 199.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300.r),
                    border: Border.all(color: AppColors.vhBlue, width: 3.w),
                  )),
            ),
            const Spacer(),
            VhJobsButton(
                text: "Continue",
                onPressed: () {
                  serviceLocator<NavigationService>()
                      .to(routeName: ProfileRoutes.successPage);
                }),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}

class GovtWidget extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  const GovtWidget({Key? key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
        child: Container(
          // height: 295.h,
          // width: 161.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 4),
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
                        Text(
                          text!,
                          style: kBold400,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: AppColors.vhBlue,
                          size: 13.sp,
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
