import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';

class CheckoutCode extends StatelessWidget {
  const CheckoutCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: const Color(0xFFBBC1C7),
      borderType: BorderType.RRect,
      radius: Radius.circular(5.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Checkout Code',
            style: AppStyles.bodySmallExtraBold,
          ),
          SizedBox(height: 4.h),
          Text(
            'Access Code',
            style: AppStyles.bodySmallExtraBold,
          ),
          Text(
            'Only release access code when service\nprovider(s) are done with the work',
            textAlign: TextAlign.center,
            style: AppStyles.bodySmall,
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '7 5 6 3 8',
                style: AppStyles.headline3ExtraBold,
              ),
              Icon(
                Icons.copy,
                size: 16.w,
                color: AppColors.color1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
