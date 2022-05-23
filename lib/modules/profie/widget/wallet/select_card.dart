import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/style/border_style.dart';
import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/button.dart';

class SelectCard extends StatefulWidget {
  const SelectCard({Key? key}) : super(key: key);

  @override
  _SelectCardState createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
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
                "Select a card",
                style: kBold900,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Choose a card or add a new card to complete the payment",
                style: kBold400.copyWith(
                    fontSize: 13.sp, fontWeight: FontWeight.w300),
              )
            ]),
            SizedBox(height: 24.h),
            Expanded(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Column(
                    children: ["1"].map((e) {
                  return CardView();
                }).toList()),
                SizedBox(height: 10.h),
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
                // Container(
                //   height: 400,
                //   child: ListView.separated(
                //       itemBuilder: (context, index) {
                //         return
                //       },
                //       separatorBuilder: (context, index) {
                //         return SizedBox(
                //           height: 10.h,
                //         );
                //       },
                //       itemCount: 3),
                // ),
                const Spacer(),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text(
                    "You are  topping up you Vhjobs wallet with",
                    style: kBold400.copyWith(
                        fontWeight: FontWeight.w300, fontSize: 15.sp),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "N10,000",
                    style: kBold900.copyWith(
                        color: AppColors.vhBlue, fontSize: 21.sp),
                  ),
                ]),
                SizedBox(height: 20.h),
                VhJobsButton(
                  text: "Top up",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30.h,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: kDecoration.copyWith(color: Colors.white),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 71.w,
                height: 42,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.vhDarkBlue),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Positioned(
                right: 0.0,
                top: -6.0,
                child: Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            children: [
              Text(
                "**** 1234",
                style: kBold400.copyWith(fontSize: 17.sp),
              ),
              Text(
                "VISA Electron",
                style: kBold400.copyWith(
                    fontWeight: FontWeight.w300, fontSize: 11.sp),
              )
            ],
          )
        ],
      ),
    );
  }
}
