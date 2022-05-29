import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:vh_jobs/modules/appointments/routes/route.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';
import 'package:vh_jobs/shared/utils/asset_images.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/button.dart';
import 'package:vh_jobs/shared/widgets/cache_image.dart';

class AppointmentPaymentSuccessful extends StatelessWidget {
  const AppointmentPaymentSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70.h),
          SvgPicture.asset(AssetResources.appointmentSuccess),
          SizedBox(height: 41.55.h),
          Text(
            'You Have Succefully Paid For The\nGroceries Shopping',
            textAlign: TextAlign.center,
            style: AppStyles.bodySmallExtraBold,
          ),
          SizedBox(height: 105.45.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: VhJobsButton(
              text: 'Show appointment',
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: AppointmentRoute.appointmentStatus);
              },
            ),
          ),
          SizedBox(height: 48.h),
          Container(
            height: 204.h,
            padding: EdgeInsets.symmetric(vertical: 13.h),
            color: AppColors.color7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    'You may also need\nthese services',
                    style: AppStyles.bodySmallExtraBold,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    itemBuilder: (_, index) => _serviceCard(),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    separatorBuilder: (_, index) => SizedBox(width: 16.w),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _serviceCard() => Container(
        width: 93.w,
        height: 120.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 24,
              spreadRadius: 2,
              offset: const Offset(0, 16),
              color: Colors.black.withOpacity(.14),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VhCacheImage(
              width: 45.w,
              height: 45.w,
              borderRadius: 100.r,
              imgUrl:
                  'https://s3-alpha-sig.figma.com/img/060e/8c48/41c9000c5b2a70ad6d1704a32ec42b68?Expires=1654473600&Signature=Iku3kK1hKZlYzTAcUGQUQAQHh-Kp4t5faWcFIhbEl2P4L~wFXvt~MK2Smnf8a53OYGYk8ai-g~acKDngfQdAvgCWl9fQei~lQi0hiu3qdcCobdGnTE1VC3WSc4yb~hT3-yR0jFEPoqkOMA43U8yjxZ85bh7Mf2Yc51JcgBq1spp9pi86KLC5Usfle-vys0b8H9VFBuOl9LuE0M1PltaHZqeF72fV5IRF0AN5rtb8tmfmioAU462BNUWjaPY8Wreq1V0rKvWlHIYIveDHQ4n8w5EkdmduZGDc-VT3hCUk1TkqhDd8oHIMuDbjSJ6DB77~BOwwHZM7QhMUmTysEYYvBw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
            ),
            SizedBox(height: 16.h),
            Text('Fumigation', style: AppStyles.caption),
          ],
        ),
      );
}
