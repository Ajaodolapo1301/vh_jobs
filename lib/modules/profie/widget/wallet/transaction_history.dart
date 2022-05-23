import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/cache_image.dart';
import '../../../../shared/widgets/forms/input_text.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Transaction history",
                style: kBold900,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "View your balance and transaction history ",
                style: kBold400.copyWith(
                    fontSize: 13.sp, fontWeight: FontWeight.w300),
              )
            ]),
            SizedBox(height: 24.h),
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: AppColors.vhBlue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r)),
              child: Expanded(
                child: Text(
                  "Kindly note that the money in your wallet can only use to puchase service and it is not withdrable.",
                  style: kBold400.copyWith(
                      color: AppColors.vhBlue,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Statement period",
                  style: kBold400.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      color: Colors.black),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InputText(
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(left: 15.w, right: 10.w),
                            child: const VhCacheImage(
                              imgUrl: AssetResources.calendar,
                            ),
                          ),
                          onTap: () {},
                          keyboardType: TextInputType.visiblePassword,
                          onSaved: (val) {},
                          labelText: "Select Range"),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Center(
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: AppColors.vhBlue,
                            borderRadius: BorderRadius.circular(5)),
                        child: const VhCacheImage(
                          imgUrl: AssetResources.filter,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return HistoryCell();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 4,
                    );
                  },
                  itemCount: 2),
            )
          ],
        ),
      ),
    );
  }
}

class HistoryCell extends StatelessWidget {
  const HistoryCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          Container(
            padding: EdgeInsets.all(10.h),
            height: 48.h,
            width: 48.w,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.vhBrown),
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
            style:
                kBold900.copyWith(fontWeight: FontWeight.w700, fontSize: 15.h),
          ),
          Text(
            "21 Mar 2021",
            style:
                kBold400.copyWith(fontWeight: FontWeight.w300, fontSize: 11.h),
          )
        ])
      ]),
    );
  }
}
