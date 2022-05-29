import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';

class MealChip extends StatelessWidget {
  final String meal;
  const MealChip({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: AppColors.dark5),
      ),
      child: Text(
        meal,
        style: AppStyles.captionBold.copyWith(
          color: AppColors.dark5,
        ),
      ),
    );
  }
}
