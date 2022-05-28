import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';

import '../../../../config/app_startup.dart';
import '../../../../shared/navigation/navigation_service.dart';
import '../../../../shared/style/border_style.dart';
import '../../../../shared/style/font_style.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/button.dart';
import '../../route/routes.dart';
import '../profile_screen.dart';

class AddressList extends StatefulWidget {
  const AddressList({Key? key}) : super(key: key);

  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Manage address",
              style: kBold900,
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return AddressListWidget(
                      text: "Home",
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                  itemCount: 3),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: AppColors.vhBlue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r)),
              child: Column(
                children: [
                  Text("Your Address",
                      style: kBold700.copyWith(
                        color: AppColors.vhBlue,
                        fontSize: 17.sp,
                      )),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "We supply your address to only service provider that travel to you. It is never made public",
                      textAlign: TextAlign.center,
                      style: kBold400.copyWith(
                          color: AppColors.vhBlue,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            VhJobsButton(
                text: "Enter your address",
                onPressed: () {
                  serviceLocator<NavigationService>()
                      .to(routeName: ProfileRoutes.addAddress);
                }),
            SizedBox(
              height: 14.h,
            ),
          ],
        ),
      ),
    );
  }
}

class AddressListWidget extends StatelessWidget {
  final String? text;
  const AddressListWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 128.h,
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
      decoration: kDecoration,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text!,
              style: kBold700.copyWith(),
            ),
            CurvedBadge(
              text: "Edit",
              onTap: () {},
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Divider(
          color: AppColors.vhBlue,
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          "No 34. War college Estate gwarinpa 3rd avenue, Abuja. FCT",
          style: kBold300.copyWith(),
        )
      ]),
    );
  }
}
