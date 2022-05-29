import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/modules/appointments/model/appointment.dart';
import 'package:vh_jobs/modules/appointments/widgets/appointment_item.dart';
import 'package:vh_jobs/shared/utils/asset_images.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';
import 'package:vh_jobs/shared/widgets/forms/input_text.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        elevation: 0,
        gradientAppBar: true,
        leadingIcon: const SizedBox(),
        centerTitle: true,
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 34.h),
            Text(
              'Appointments',
              style: AppStyles.headline2,
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Expanded(
                  child: InputText(
                    labelText: 'Search',
                    prefixIcon: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SvgPicture.asset(AssetResources.search),
                      ),
                    ),
                    onTap: () {},
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (val) {},
                  ),
                ),
                SizedBox(width: 19.w),
                Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.color1,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: SvgPicture.asset(AssetResources.filter),
                  ),
                ),
              ],
            ),
            SizedBox(height: 23.h),
            ...Appointment.dummyAppointments
                .map((e) => AppointmentItemWidget(appointment: e))
                .toList(),
          ],
        ),
      ),
    );
  }
}
