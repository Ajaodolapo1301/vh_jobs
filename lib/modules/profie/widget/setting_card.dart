import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/modules/profie/widget/setting_divider.dart';
import 'package:vh_jobs/modules/profie/widget/setting_tile.dart';

import '../../../shared/utils/colors.dart';
import '../model/setting_data.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: AppColors.goMechoWhite,
          margin: EdgeInsets.only(bottom: 10.h, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment & Payout",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 17.sp, height: 1.2),
              ),
              SizedBox(height: 8.h),
              SettingDivider(
                color: AppColors.vhLightBlue,
              ),
              // SizedBox(height: 5.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: SettingItems.loadSettingItem1(context).length,
                // separatorBuilder: (BuildContext context, int index) {
                //   return SettingDivider();
                // },
                itemBuilder: (BuildContext context, int index) {
                  SettingItem item =
                      SettingItems.loadSettingItem1(context)[index];
                  return SettingTile(
                    leadingIcon: item.image,
                    titleText: item.title,
                    onTap: item.onTap,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingCard2 extends StatelessWidget {
  const SettingCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: AppColors.goMechoWhite,
          margin: EdgeInsets.only(bottom: 16.h, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Setting",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 17.sp, height: 1.2),
              ),
              SizedBox(height: 8.h),
              SettingDivider(
                color: AppColors.vhLightBlue,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: SettingItems.loadSettingItem2(context).length,
                // separatorBuilder: (BuildContext context, int index) {
                //   return SettingDivider();
                // },
                itemBuilder: (BuildContext context, int index) {
                  SettingItem item =
                      SettingItems.loadSettingItem2(context)[index];
                  return SettingTile(
                    leadingIcon: item.image,
                    titleText: item.title,
                    onTap: item.onTap,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingCard3 extends StatelessWidget {
  const SettingCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: AppColors.goMechoWhite,
          margin: EdgeInsets.only(bottom: 16.h, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Referral & Bonus",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 17.sp, height: 1.2),
              ),
              SizedBox(height: 5.h),
              SettingDivider(
                color: AppColors.vhLightBlue,
              ),
              SizedBox(height: 8.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: SettingItems.loadSettingItem3(context).length,
                // separatorBuilder: (BuildContext context, int index) {
                //   return SettingDivider();
                // },
                itemBuilder: (BuildContext context, int index) {
                  SettingItem item =
                      SettingItems.loadSettingItem3(context)[index];
                  return SettingTile(
                    leadingIcon: item.image,
                    titleText: item.title,
                    onTap: item.onTap,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingCard4 extends StatelessWidget {
  const SettingCard4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: AppColors.goMechoWhite,
          margin: EdgeInsets.only(bottom: 16.h, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Support",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 17.sp, height: 1.2),
              ),
              SizedBox(height: 5.h),
              SettingDivider(
                color: AppColors.vhLightBlue,
              ),
              SizedBox(height: 5.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: SettingItems.loadSettingItem4(context).length,
                // separatorBuilder: (BuildContext context, int index) {
                //   return SettingDivider();
                // },
                itemBuilder: (BuildContext context, int index) {
                  SettingItem item =
                      SettingItems.loadSettingItem4(context)[index];
                  return SettingTile(
                    leadingIcon: item.image,
                    titleText: item.title,
                    onTap: item.onTap,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
