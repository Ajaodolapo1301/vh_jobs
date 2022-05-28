import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/widgets/button.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/utils/colors.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  bool pinCode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Image.asset(AssetResources.check),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Facial verificationtion successful",
                    style: kBold900,
                  )
                ],
              ),
            ),
            const Spacer(),
            VhJobsButton(text: "Continue", onPressed: () {}),
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
