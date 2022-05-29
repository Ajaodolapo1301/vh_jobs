import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';

class UnmatchedDetails extends StatelessWidget {
  const UnmatchedDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.color7,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Text(
            'You are not matched with the service\nprovider yet, the service provider details will\nbe showing here when you are matched',
            textAlign: TextAlign.center,
            style: AppStyles.caption.copyWith(color: AppColors.color1),
          ),
        ),
        SizedBox(height: 33.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.color7,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: RichText(
            text: TextSpan(
                text:
                    'If you are not matched after 2 hours you\nschedule appointment, please contact ',
                style: AppStyles.button.copyWith(
                    color: AppColors.dark5, fontWeight: FontWeight.w300),
                children: const [
                  TextSpan(
                    text: 'support team',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.color1,
                    ),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
