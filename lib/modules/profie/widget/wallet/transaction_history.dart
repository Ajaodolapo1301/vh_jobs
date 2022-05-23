import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/modules/profie/widget/wallet/widget/history_cell.dart';
import 'package:vh_jobs/modules/profie/widget/wallet/widget/wallet_balace_widget.dart';

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
            WalletBalanceWidget(
              color: AppColors.vhBlue,
            ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Container(
                      height: 39.h,
                      width: 40.w,
                      margin: EdgeInsets.only(top: 6.h),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: AppColors.vhBlue,
                          borderRadius: BorderRadius.circular(5)),
                      child: SvgPicture.asset(
                        AssetResources.filter,
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
                      height: 6,
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
