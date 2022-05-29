import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/shared/utils/asset_images.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/button.dart';

class AppointmentStatusScreen extends StatelessWidget {
  const AppointmentStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String icon = AssetResources.pending;
    Color color = AppColors.variant2;
    String title = 'Appointment is awaiting to be\nmatched';
    String subtitle =
        'We,ll let you know when your appointment\nis matched with a service provider.';

    bool isMatched = true; // Random().nextInt(10).isEven;
    if (isMatched) {
      icon = AssetResources.matched;
      title = 'Appointment Matched\nApr 24, 2022. 09:00AM';
      subtitle = 'You’re done!';
      color = AppColors.color1;
    }
    return Scaffold(
      backgroundColor: color,
      body: Column(
        children: [
          SizedBox(height: 180.h),
          SvgPicture.asset(icon),
          SizedBox(height: 45.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.bodySmallExtraBold.copyWith(
              color: Colors.white,
            ),
          ),
          if (isMatched)
            Container(
              width: 148.93.w,
              height: 38.92.h,
              margin: EdgeInsets.symmetric(vertical: 40.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.white,
                    size: 17.93.w,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Add to Calendar',
                    style: AppStyles.caption.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          const Expanded(child: SizedBox.shrink()),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppStyles.bodySmall.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 31.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: VhJobsButton(
              text: 'OK',
              color: Colors.white,
              textColor: AppColors.color1,
              onPressed: () {},
            ),
          ),
          SizedBox(height: 87.5.h),
        ],
      ),
    );
  }
}
