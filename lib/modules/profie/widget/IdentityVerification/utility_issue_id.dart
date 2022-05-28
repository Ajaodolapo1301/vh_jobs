import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../model/govt_model.dart';

class UtilityBill extends StatefulWidget {
  const UtilityBill({Key? key}) : super(key: key);

  @override
  _UtilityBillState createState() => _UtilityBillState();
}

class _UtilityBillState extends State<UtilityBill> {
  bool pinCode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Utility Bill",
                  style: kBold900,
                ),
                Text(
                  "Choose one of the document option to verify your resident address",
                  style: kBold300.copyWith(fontSize: 13.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  GovtItem item = GovtItem.loadGovtItem2(context)[index];
                  return GovtWidget(text: item.title, onTap: item.onTap);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15.h,
                  );
                },
                itemCount: GovtItem.loadGovtItem2(context).length),
          )
        ],
      ),
    );
  }
}

class GovtWidget extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  const GovtWidget({Key? key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
        child: Container(
          // height: 295.h,
          // width: 161.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 4),
              ),
            ],
          ),

          child: Material(
            shadowColor: Colors.black26,
            borderRadius: BorderRadius.circular(6.r),
            child: Container(
              padding: EdgeInsets.all(12.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text!,
                          style: kBold400,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: AppColors.vhBlue,
                          size: 13.sp,
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
