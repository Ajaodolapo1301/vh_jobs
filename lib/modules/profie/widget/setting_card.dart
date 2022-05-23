import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/modules/profie/widget/setting_divider.dart';

import '../model/setting_data.dart';
import 'setting_tile.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({Key? key}) : super(key: key);

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
                "Payment & Payout",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 17.sp, height: 1.2),
              ),
              SizedBox(height: 5.h),
              SettingDivider(),
              SizedBox(height: 5.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: SettingItems.loadSettingItem(context).length,
                // separatorBuilder: (BuildContext context, int index) {
                //   return SettingDivider();
                // },
                itemBuilder: (BuildContext context, int index) {
                  SettingItem item =
                      SettingItems.loadSettingItem(context)[index];
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
