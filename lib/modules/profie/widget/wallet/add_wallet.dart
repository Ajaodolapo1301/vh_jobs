import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/style/border_style.dart';
import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/button.dart';

class AddWallet extends StatefulWidget {
  const AddWallet({Key? key}) : super(key: key);

  @override
  _AddWalletState createState() => _AddWalletState();
}

class _AddWalletState extends State<AddWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Add money to wallet",
                style: kBold900,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Please select how you want to top up your Vhjobs wallet",
                style: kBold400.copyWith(
                    fontSize: 13.sp, fontWeight: FontWeight.w300),
              )
            ]),
            SizedBox(height: 24.h),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: kDecoration.copyWith(color: Colors.white),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top up with Card",
                      style: kBold900.copyWith(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 16.h),
                    Divider(
                      color: AppColors.vhBlue,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Enter the amount and choose the card top up your Vhjobs wallet ",
                      style: kBold400.copyWith(
                          height: 1.2.h,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 12.h),
                    VhJobsButton(
                      type: ButtonType.outlined,
                      height: 30.h,
                      color: Colors.white,
                      borderColor: AppColors.vhBlue,
                      text: "Top up with card",
                    )
                  ]),
            ),
            SizedBox(height: 24.h),
            BankInfoWidget()
          ],
        ),
      ),
    );
  }
}

class AccountText extends StatelessWidget {
  final String? text;
  final String? subText;
  final bool doc;
  const AccountText({Key? key, this.text, this.subText, this.doc = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text!,
              style: kBold400.copyWith(
                  fontWeight: FontWeight.w300, fontSize: 15.sp),
            ),
            Row(
              children: [
                Text(
                  subText!,
                  style: kBold400.copyWith(fontSize: 15.sp),
                ),
                if (doc) SvgPicture.asset(AssetResources.doc)
              ],
            ),
          ],
        ),
        SizedBox(
          height: 14.sp,
        )
      ],
    );
  }
}

class BankInfoWidget extends StatelessWidget {
  const BankInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: kDecoration.copyWith(color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Top up with bank transfer",
          style:
              kBold900.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8.h),
        const Divider(),
        SizedBox(height: 16.h),
        const AccountText(
          text: "Account name",
          subText: "Nkechi Enamdi",
        ),
        const AccountText(
          text: "Bank name",
          subText: "Wema Bank",
        ),
        const AccountText(
          text: "Account number",
          subText: "7024373756",
          doc: true,
        ),
        SizedBox(height: 16.h),
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
              color: AppColors.vhBlue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5.r)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AssetResources.infoCircle),
              SizedBox(
                width: 4.w,
              ),
              Expanded(
                child: Text(
                  "You can copy your account number and top up your Vhjobs wallet using bank transfer from any bank",
                  style: kBold400.copyWith(
                      color: AppColors.vhBlue,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
