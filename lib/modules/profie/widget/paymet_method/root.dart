import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../wallet/add_wallet.dart';
import '../wallet/select_card.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool card = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Payment method",
                style: kBold900,
              ),
              SizedBox(
                height: 24.h,
              ),
              Divider(
                color: AppColors.vhBlue,
              ),
              SizedBox(
                height: 4.h,
              ),
              AnimatedContainer(
                duration: const Duration(microseconds: 300),
                curve: Curves.decelerate,
                width: double.infinity,
                height: 40.h,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              card = !card;
                            });
                          },
                          child: AnimatedContainer(
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: const Duration(microseconds: 500),
                            // width: 100.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  bottomLeft: Radius.circular(30.r)),
                              border: Border.all(
                                color: Colors.white,
                              ),
                              color:
                                  card ? AppColors.vhBlue : Color(0xffF4F4F4),
                            ),
                            child: Center(
                                child: Text("Card",
                                    style: kBold400.copyWith(
                                      color: card ? Colors.white : Colors.black,
                                    ))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              card = !card;
                            });
                          },
                          child: AnimatedContainer(
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: const Duration(milliseconds: 300),
                            // width: 100.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.r),
                                  bottomRight: Radius.circular(30.r)),
                              border: Border.all(color: Colors.white),
                              color: !card ? AppColors.vhBlue : Colors.white,
                            ),
                            child: Center(
                                child: Text("Bank transfer",
                                    style: kBold400.copyWith(
                                      color: card ? Colors.black : Colors.white,
                                    ))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
              ),
              SizedBox(
                height: 4.h,
              ),
              Divider(
                color: AppColors.vhBlue,
              ),
              SizedBox(
                height: 24.h,
              ),
              if (card)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Saved Card",
                      style: kBold700.copyWith(fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Column(
                        children: ["1"].map((e) {
                      return CardView();
                    }).toList()),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.vhBlue,
                          size: 20.sp,
                        ),
                        Text(
                          " Add Card",
                          style: kBold400.copyWith(
                              color: AppColors.vhBlue, fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              if (!card) BankInfoWidget()
            ],
          ),
        ),
      ),
    );
  }
}
