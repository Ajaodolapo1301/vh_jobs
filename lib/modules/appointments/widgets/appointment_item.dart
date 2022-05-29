import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:vh_jobs/modules/appointments/model/appointment.dart';
import 'package:vh_jobs/modules/appointments/routes/route.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/cache_image.dart';

class AppointmentItemWidget extends StatelessWidget {
  final Appointment appointment;
  const AppointmentItemWidget({Key? key, required this.appointment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GetIt.I.get<NavigationService>().toWithParameters(
          routeName: AppointmentRoute.appointmentDetails,
          args: {'appointment': appointment}),
      child: Container(
        // height: 150.h,
        padding: EdgeInsets.symmetric(horizontal: 21.5.w),
        margin: EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
          color: AppColors.color7,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.75.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: .5.h),
                        decoration: BoxDecoration(
                          color: appointment.appointmentStatus.color,
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: Text(
                          appointment.appointmentStatus.name.toUpperCase(),
                          style:
                              AppStyles.caption.copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(appointment.name,
                          style: AppStyles.bodySmallExtraBold),
                      SizedBox(height: 18.75.h),
                      Text(
                        appointment.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.mullish,
                      ),
                      SizedBox(height: 4.h),
                      appointment.images.isEmpty
                          ? Text(
                              appointment.address,
                              style: AppStyles.caption,
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: appointment.images
                                  .take(3)
                                  .map(
                                    (e) => Padding(
                                      padding: EdgeInsets.only(right: 6.w),
                                      child: VhCacheImage(
                                        imgUrl: e,
                                        width: 32.w,
                                        height: 32.w,
                                        borderRadius: 100.r,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            )
                    ],
                  ),
                ),
              ),
              const VerticalDivider(
                  width: 0, thickness: 1, color: AppColors.color5),
              Container(
                width: 102.w,
                padding: EdgeInsets.symmetric(vertical: 12.75.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        color: AppColors.color1,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      child:
                          Text(appointment.slot, style: AppStyles.captionBold),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Apr',
                      style: AppStyles.caption,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      appointment.day,
                      style: AppStyles.headline3Bold,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      appointment.time,
                      style: AppStyles.caption,
                    ),
                    Text(
                      '1/2',
                      style: AppStyles.button,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
