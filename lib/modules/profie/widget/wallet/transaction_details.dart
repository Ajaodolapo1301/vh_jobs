import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/forms/input_text.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  _TransactionDetailsState createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Transaction details",
              style: kBold900,
            ),
            SizedBox(
              height: 47.h,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                height: 80.h,
                width: 80.w,
                padding: EdgeInsets.all(15.h),
                decoration: BoxDecoration(
                  color: AppColors.vhLightBlue,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  AssetResources.inflow,
                  color: AppColors.vhDarkBlue,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "N10,000",
                style: kBold900.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 21.sp),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "21 Mar 2021",
                style: kBold400.copyWith(
                    fontWeight: FontWeight.w300, fontSize: 13.sp),
              ),
              SizedBox(
                height: 29.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status",
                    style: kBold400.copyWith(fontSize: 15.sp),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.w, vertical: 7.h),
                    decoration: BoxDecoration(
                      color: AppColors.vhGreen,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Text(
                      "Successful",
                      style: kBold900.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 11.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              InputText(
                headerText: "Description",
                labelText: 'Card deposit',
              ),
              SizedBox(
                height: 16.h,
              ),
              InputText(
                headerText: "Transaction reference",
                labelText: '172338784',
              )
            ]),
          ],
        ),
      ),
    );
  }
}
