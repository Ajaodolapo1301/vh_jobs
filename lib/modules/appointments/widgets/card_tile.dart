import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';

class CardTile extends StatelessWidget {
  final int? count;
  final String text;
  final Function()? onTap;
  const CardTile({Key? key, required this.text, this.onTap, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 12.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 2,
              offset: const Offset(0, 2),
              color: Colors.black.withOpacity(.15),
            ),
            BoxShadow(
              blurRadius: 2,
              offset: const Offset(0, 1),
              color: Colors.black.withOpacity(.30),
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              text,
              style: AppStyles.bodyLargeBold,
            ),
            if (count != null)
              Container(
                width: 24.w,
                height: 24.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.error,
                ),
                child: Center(
                    child: Text(
                  '$count',
                  style: AppStyles.bodySmallBold.copyWith(
                    color: Colors.white,
                  ),
                )),
              ),
            const Expanded(child: SizedBox.shrink()),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.dark5,
              size: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
