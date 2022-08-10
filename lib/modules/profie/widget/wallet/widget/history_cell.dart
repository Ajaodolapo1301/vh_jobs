import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/config/app_startup.dart';

import '../../../../../shared/navigation/navigation_service.dart';
import '../../../../../shared/style/font_style.dart';
import '../../../../../shared/utils/asset_images.dart';
import '../../../../../shared/utils/colors.dart';
import '../../../route/routes.dart';

class HistoryCell extends StatelessWidget {
  const HistoryCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        serviceLocator<NavigationService>()
            .to(routeName: ProfileRoutes.transactionDetails);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.w),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
              padding: EdgeInsets.all(13.h),
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.vhBrown),
              child: SvgPicture.asset(
                AssetResources.inflow,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 14.w),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Visa *4520",
                style: kBold900.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 15.h),
              ),
              Text(
                "Top up",
                style: kBold400.copyWith(
                    fontWeight: FontWeight.w300, fontSize: 11.h),
              )
            ]),
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "N10,000",
              style: kBold900.copyWith(
                  fontWeight: FontWeight.w700, fontSize: 15.h),
            ),
            Text(
              "21 Mar 2021",
              style: kBold400.copyWith(
                  fontWeight: FontWeight.w300, fontSize: 11.h),
            )
          ])
        ]),
      ),
    );
  }
}
