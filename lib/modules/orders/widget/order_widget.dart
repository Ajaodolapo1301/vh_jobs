import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/style/font_style.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/widgets/button.dart';

class OrderWidget extends StatelessWidget {
  final OrderModel orderModel;
  const OrderWidget({Key? key, required this.orderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // margin: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderModel.text!,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
              ),
              Container(
                padding: EdgeInsets.all(8.w),
                // width: 89.w,
                // height: 29.h,
                decoration: BoxDecoration(
                    color: AppColors.vhGreen,
                    borderRadius: BorderRadius.all(Radius.circular(5.r))),
                child: Text(
                  '${orderModel.slots!.length} slots left',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.all(10.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Package:',
                style: kBold400.copyWith(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                orderModel.package!,
                style: kBold400.copyWith(
                    fontSize: 13.sp, fontWeight: FontWeight.w300),
              )
            ])

            //       RichText(
            //         text: TextSpan(
            //             text: 'Package:\n',
            //             style: TextStyle(
            //                 fontSize: 15.sp,
            //                 fontWeight: FontWeight.w500,
            //                 color: Color(0xff000000)
            // ),
            //             children: <TextSpan>[
            //               TextSpan(
            //                   text: orderModel.package,
            //                   style: kBold400.copyWith(
            //                       fontSize: 13.sp, fontWeight: FontWeight.w300)),
            //             ]),
            //       ),
            ),
        if (orderModel.appointment != null)
          Container(
              padding: EdgeInsets.all(10.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderModel.appointment!,
                      style: kBold400.copyWith(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Alfred Pascal",
                      style: kBold400.copyWith(
                          fontSize: 13.sp, fontWeight: FontWeight.w300),
                    )
                  ])

              //       RichText(
              //         text: TextSpan(
              //             text: 'Package:\n',
              //             style: TextStyle(
              //                 fontSize: 15.sp,
              //                 fontWeight: FontWeight.w500,
              //                 color: Color(0xff000000)
              // ),
              //             children: <TextSpan>[
              //               TextSpan(
              //                   text: orderModel.package,
              //                   style: kBold400.copyWith(
              //                       fontSize: 13.sp, fontWeight: FontWeight.w300)),
              //             ]),
              //       ),
              ),
        // Container(
        //   padding: EdgeInsets.all(10.w),
        //   child: RichText(
        //     text: TextSpan(
        //         text: orderModel.appointment,
        //         style: TextStyle(
        //             fontWeight: FontWeight.w500,
        //             fontSize: 15.sp,
        //             color: Colors.black),
        //         // ignore: prefer_const_literals_to_create_immutables
        //         children: <TextSpan>[
        //           TextSpan(
        //               text: 'Alfred Pascal',
        //               style: kBold400.copyWith(
        //                   fontSize: 13.sp, fontWeight: FontWeight.w300)),
        //         ]),
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(10.w),
          child: RichText(
            text: TextSpan(
                text: 'Active:\n',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    color: Color(0xff000000)),

                // ignore: prefer_const_literals_to_create_immutables
                children: <TextSpan>[
                  TextSpan(
                      text: 'Apr2- Jun 2',
                      style: TextStyle(fontWeight: FontWeight.normal)),
                ]),
          ),
        ),
        if (orderModel.slots!.isNotEmpty)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: VhJobsButton(text: "Schedule Appiontment", onPressed: () {}),
          ),
      ],
    );
  }
}

class OrderModel {
  String? text;
  String? package;
  String? appointment;
  List<String>? slots;
  bool? isExpired;

  OrderModel(
      {this.text,
      this.package,
      this.appointment,
      this.slots,
      this.isExpired = false});

  static List<OrderModel> listOrder(context) {
    return <OrderModel>[
      OrderModel(
        text: "Cleaning service",
        package: "Level 3 (Four times miniflat bundled cleaning ironing)",
        slots: ["1", "2", "3", "4", "5", "6"],
        appointment: "Appointment: Apr 20",
        isExpired: false,
      ),
    ];
  }
}
