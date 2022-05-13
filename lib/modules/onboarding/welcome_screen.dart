import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';

import '../../shared/utils/asset_images.dart';
import '../../shared/utils/colors.dart';
import '../../shared/widgets/button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool? first;
  bool? second;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        titleWidget: SvgPicture.asset(
          AssetResources.smallLogo,
          width: 40.w,
          height: 40.h,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            Text(
              'Welcome to Vhjobs',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColors.vhBlue),
            ),
            SizedBox(height: 10.h),
            Text(
              'Want do you want to do',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10.h),

            InkWell(
              onTap: () {
                setState(() {
                  first = true;
                  second = false;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8.h),
                child: Center(
                  child: Text(
                    'I want to hire professional for my needs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:
                          first != null && first! ? Colors.white : Colors.black,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10.0),
                    color: first != null && first!
                        ? AppColors.vhBlue
                        : Colors.white),
                width: 213,
                height: 98,
              ),
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {
                setState(() {
                  first = false;
                  second = true;
                });
              },
              child: Container(
                child: Container(
                  width: 150.w,
                  padding: EdgeInsets.all(15.w),
                  child: Center(
                    child: Text(
                      'I am professional, i want to be a service provider',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: second != null && second!
                            ? Colors.white
                            : Colors.black,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10.0),
                    color: second != null && second!
                        ? AppColors.vhBlue
                        : Colors.white),
                width: 213,
                height: 98,
              ),
            ),
            SizedBox(height: 50.h),

            VhJobsButton(
              text: "Continue",
              onPressed: first != null || second != null ? () {} : null,
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //     margin: EdgeInsets.all(10.0),
            //     padding: EdgeInsets.all(15),
            //     child: Text(
            //       'Continue',
            //       style: TextStyle(color: Colors.white),
            //       textAlign: TextAlign.center,
            //     ),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(30.0),
            //         color: AppColors.vhBlue),
            //     width: 305,
            //     height: 45,
            //   ),
            // ),
            SizedBox(height: 10.h),
            Text('Need Help ?')
          ],
        ),
      ),
    );
  }
}
