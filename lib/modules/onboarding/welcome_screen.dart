import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vh_jobs/config/app_startup.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';

import '../../shared/navigation/navigation_service.dart';
import '../../shared/style/font_style.dart';
import '../../shared/utils/asset_images.dart';
import '../../shared/utils/colors.dart';
import '../../shared/widgets/button.dart';
import '../root/route/routes.dart';

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
        elevation: 0,
        titleWidget: SvgPicture.asset(
          AssetResources.smallLogo,
          width: 40.w,
          height: 40.h,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                  fontSize: 15.sp,
                  color: AppColors.vhDarkBlue,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.75),
            ),
            SizedBox(height: 21.h),
            InkWell(
              onTap: () {
                setState(() {
                  first = true;
                  second = false;
                });
              },
              child: Container(
                padding: EdgeInsets.all(25.w),
                child: Center(
                  child: Text(
                    'I want to hire professional for my needs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:
                          first != null && first! ? Colors.white : Colors.black,
                      fontSize: 15.sp,
                      fontWeight: first != null && first!
                          ? FontWeight.w700
                          : FontWeight.w400,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10.0),
                    color: first != null && first!
                        ? AppColors.vhBlue
                        : Colors.white),
                width: 213.w,
                height: 98.h,
              ),
            ),
            SizedBox(height: 30.h),
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
                  padding: EdgeInsets.all(25.w),
                  child: Center(
                    child: Text(
                      'I am professional, i want to be a service provider',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: second != null && second!
                            ? FontWeight.w700
                            : FontWeight.w400,
                        color: second != null && second!
                            ? Colors.white
                            : Colors.black,
                        letterSpacing: 0.7,
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
                width: 213.w,
                height: 98.h,
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: VhJobsButton(
                text: "Continue",
                onPressed: first != null || second != null
                    ? () {
                        serviceLocator<NavigationService>()
                            .to(routeName: RootRoutes.home);
                      }
                    : null,
              ),
            ),
            SizedBox(height: 48.h),
            Text(
              'Need Help ?',
              style: kBold700.copyWith(color: AppColors.colordark),
            )
          ],
        ),
      ),
    );
  }
}
