import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:vh_jobs/modules/appointments/widgets/chat_item.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';
import 'package:vh_jobs/shared/utils/asset_images.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';
import 'package:vh_jobs/shared/widgets/button.dart';
import 'package:vh_jobs/shared/widgets/cache_image.dart';
import 'package:vh_jobs/shared/widgets/forms/custom_text_field.dart';

class AppointmentChatScreen extends StatelessWidget {
  const AppointmentChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        elevation: 2,
        leadingIcon: IconButton(
          onPressed: () {
            GetIt.I.get<NavigationService>().back();
          },
          icon: Icon(
            Icons.close,
            color: AppColors.dark5,
            size: 24.w,
          ),
        ),
        titleWidget: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VhCacheImage(
              width: 32.w,
              height: 32.w,
              borderRadius: 100.r,
              imgUrl:
                  'https://s3-alpha-sig.figma.com/img/384f/8a0c/0dce0716d04bd51e2fc5f5eaa19efc76?Expires=1654473600&Signature=RXqohXqS5bPVv6KEEyqQ8FWBXf8pp~2UebWrI-7OSLonaH~jhtxFC5ZhM15IxYH~FvbUwXHs4536rvkvp6UepVjeke~cse2Xjmxedac7GKjguDGerOxcvc~jxjOqvb3V1SRzuxFeCJXLPslA0cTVBFtPcx~~6OIb9DJQxbLADb-bBwzjQewr9fokS8uFjV7rzPGb1e8EvbU6Q~iUqOlLSZA2DCSRMW-MRLoVdFGV7ZoI4VtXsmZOs7JmGdMKjfGhBl59KVMLHyUA0MOGlYVNSqejcVknnqmGRI74U7Fdrdez3hdUJuebEa93LMS60z-T4Sq9efdY12UZm3Uj3IWdxg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
            ),
            SizedBox(width: 8.w),
            Text('Obi O', style: AppStyles.headline3Bold),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.phone_in_talk_rounded,
            size: 24.w,
            color: AppColors.color1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            20,
            (index) => ChatItemWidget(isSender: index % 3 == 0),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 126.h,
        width: double.maxFinite,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextField(
              lines: 2,
              header: '',
              useMargin: true,
              hint: 'Add a comment.....',
              suffix: Icon(
                Icons.attachment_outlined,
                color: AppColors.dark5,
                size: 16.w,
              ),
            ),
            // CustomTextField(
            //   prefix: AssetResources.person,
            //   useMargin: false,
            //   validator: (v) {
            //     if (v!.isEmpty) {
            //       return "Empty";
            //     }

            //     return null;
            //   },
            //   header: "First and Last Name",
            // ),
            SizedBox(height: 8.h),
            VhJobsButton(
              text: 'Send',
              width: 121.w,
              height: 37.h,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
