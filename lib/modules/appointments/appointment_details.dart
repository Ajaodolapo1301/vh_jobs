import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:vh_jobs/modules/appointments/model/appointment.dart';
import 'package:vh_jobs/modules/appointments/routes/route.dart';
import 'package:vh_jobs/modules/appointments/widgets/access_code.dart';
import 'package:vh_jobs/modules/appointments/widgets/card_tile.dart';
import 'package:vh_jobs/modules/appointments/widgets/checkout_code.dart';
import 'package:vh_jobs/modules/appointments/widgets/service_provider_card.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';
import 'package:vh_jobs/shared/widgets/button.dart';

import 'widgets/unmatched_details.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  final Appointment appointment;
  const AppointmentDetailsScreen({Key? key, required this.appointment})
      : super(key: key);

  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  bool _packageDetailsExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(gradientAppBar: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            Row(
              children: [
                Text('10:30 AM', style: AppStyles.headline3Bold),
                SizedBox(width: 8.w),
                Icon(
                  Icons.circle,
                  color: AppColors.dark5,
                  size: 6.w,
                ),
                Expanded(
                  child: Text(
                    'Thr, 7 Apr',
                    style: AppStyles.headline3Bold,
                  ),
                ),
                Icon(
                  Icons.calendar_month_outlined,
                  color: AppColors.dark5,
                  size: 27.25.w,
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.5.w,
                  vertical: 6.5.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: widget.appointment.appointmentStatus.color,
                ),
                child: Text(
                  widget.appointment.appointmentStatus.name.toUpperCase(),
                  style: AppStyles.button.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            ExpansionTile(
              // tilePadding:
              //     EdgeInsets.symmetric(vertical: 13.h, horizontal: 22.w),
              onExpansionChanged: (val) {
                _packageDetailsExpanded = val;
                setState(() {});
              },
              backgroundColor: Colors.white,
              collapsedBackgroundColor: Colors.white,
              title: Text(
                'Package Details',
                style: AppStyles.bodyLargeBold,
              ),
              trailing: Icon(
                _packageDetailsExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: AppColors.dark5,
              ),
              childrenPadding: EdgeInsets.symmetric(horizontal: 18.w),
              expandedAlignment: Alignment.topLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _tileDetailsGroup(
                  name: 'Details',
                  value:
                      'Level 1, Two times cleaning and ironing in a month for 2-bedroom apartment',
                ),
                SizedBox(height: 16.h),
                Text(
                  'Delivery information',
                  style: AppStyles.bodySmallBold,
                ),
                SizedBox(height: 8.h),
                _tileDetailsGroup(
                  name: 'Name: ',
                  value: 'Nkechi Enamdi',
                ),
                SizedBox(height: 8.h),
                _tileDetailsGroup(
                  name: 'Adress: ',
                  value:
                      'No 34. War college Estate gwarinpa 3rd avenue, Abuja FCT',
                ),
                SizedBox(height: 8.h),
                _tileDetailsGroup(
                  name: 'Phone number:  ',
                  value: '+234 8142 8822 2610',
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Text(
                      'View peckage features',
                      style: AppStyles.button.copyWith(
                        color: AppColors.color1,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: 9.59.w,
                      color: AppColors.color1,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 32.h),
            if (widget.appointment.appointmentStatus ==
                AppointmentStatus.matched)
              const ServiceProviderCard(),
            if (widget.appointment.appointmentStatus ==
                AppointmentStatus.unmatched)
              const UnmatchedDetails(),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: CardTile(
                text: 'Group message',
                count: 3,
                onTap: () => GetIt.I
                    .get<NavigationService>()
                    .to(routeName: AppointmentRoute.appointmentChat),
              ),
            ),
            SizedBox(height: 10.h),
            const CardTile(text: 'Meal options'),
            SizedBox(height: 8.h),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: List.generate(
                5,
                (index) => _mealChip('Egusi soup'),
              ),
            ),
            const AccessCode(),
            SizedBox(height: 24.h),
            const CheckoutCode(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 43.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            VhJobsButton(
              borderColor: AppColors.color5,
              textColor: AppColors.error,
              type: ButtonType.outlined,
              onPressed: _cancelConfirmDialog,
              text: 'Cancel',
              width: 143.w,
              height: 45.h,
            ),
            // SizedBox(width: 35.w),
            VhJobsButton(
              borderColor: AppColors.color5,
              textColor: AppColors.dark5,
              type: ButtonType.outlined,
              onPressed: _datepickerDialog,
              width: 143.w,
              height: 45.h,
              text: 'Reschedule',
            ),
          ],
        ),
      ),
    );
  }

  Widget _tileDetailsGroup({required String name, required String value}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: AppStyles.bodySmall),
          SizedBox(height: 4.h),
          Text(
            value,
            style: AppStyles.bodySmallBoldOpacity,
          ),
        ],
      );

  Widget _mealChip(String text) => Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColors.dark5),
        ),
        child: Text(
          text,
          style: AppStyles.captionBold.copyWith(
            color: AppColors.dark5,
          ),
        ),
      );

  _datepickerDialog() => showGeneralDialog(
        context: context,
        pageBuilder: (_, __, ___) => Material(
          type: MaterialType.transparency,
          child: Align(
            child: Container(
              width: 335.w,
              height: 437.h,
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 14.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.close,
                      color: AppColors.dark5,
                      size: 24.w,
                    ),
                  ),
                  Text(
                    'Pick date and time for your\nappointment',
                    textAlign: TextAlign.center,
                    style: AppStyles.headline3ExtraBold,
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 213.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  SizedBox(height: 22.h),
                  VhJobsButton(
                    onPressed: () {
                      GetIt.I.get<NavigationService>().to(
                          routeName:
                              AppointmentRoute.appointmentChooseProvider);
                    },
                    text: 'Reshedule',
                    width: 291.w,
                    height: 45.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  _cancelConfirmDialog() => showGeneralDialog(
        context: context,
        pageBuilder: (_, __, ___) => Material(
          type: MaterialType.transparency,
          child: Align(
            child: Container(
              width: 335.w,
              height: 193.h,
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 14.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.close,
                      color: AppColors.dark5,
                      size: 24.w,
                    ),
                  ),
                  Text(
                    'Are You Sure',
                    textAlign: TextAlign.center,
                    style: AppStyles.headline3ExtraBold,
                  ),
                  SizedBox(height: 23.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VhJobsButton(
                        type: ButtonType.outlined,
                        onPressed: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        text: 'Yes, Cancel',
                        textColor: AppColors.error,
                        width: 136.w,
                        height: 45.h,
                      ),
                      VhJobsButton(
                        onPressed: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        text: 'Oops, No',
                        width: 136.w,
                        height: 45.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
