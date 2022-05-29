import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';
import 'package:vh_jobs/shared/utils/asset_images.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';
import 'package:vh_jobs/shared/widgets/button.dart';
import 'package:vh_jobs/shared/widgets/forms/custom_text_field.dart';

import 'routes/route.dart';
import 'widgets/card_tile.dart';
import 'widgets/meal_chip.dart';

class ScheduleAppointmentScreen extends StatelessWidget {
  const ScheduleAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(gradientAppBar: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 22.h),
            Text('Schedule appointment', style: AppStyles.headline3Bold),
            SizedBox(height: 23.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.innerBorder),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pick date and time for your\nappointment',
                    style: AppStyles.bodyLargeBold,
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.color6,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            CardTile(
              text: 'Meal options',
              onTap: () => GetIt.I
                  .get<NavigationService>()
                  .to(routeName: AppointmentRoute.appointmentMealOptions),
            ),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: List.generate(
                5,
                (index) => const MealChip(meal: 'Egusi soup'),
              ),
            ),
            SizedBox(height: 24.h),
            CustomTextField(
              hint: 'Leave a note (optional)',
              prefix: AssetResources.message,
            ),
            SizedBox(height: 40.h),
            VhJobsButton(
              text: 'Schedule',
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: AppointmentRoute.quotation);
              },
            ),
          ],
        ),
      ),
    );
  }
}
