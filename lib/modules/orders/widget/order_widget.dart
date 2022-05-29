import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/config/app_startup.dart';

import '../../../shared/navigation/navigation_service.dart';
import '../../../shared/style/font_style.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/widgets/button.dart';
import '../../classic/route/root_classic.dart';

class OrderWidget extends StatelessWidget {
  final OrderModel orderModel;
  const OrderWidget({Key? key, required this.orderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Text(
                        orderModel.text!,
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 15.sp),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w300),
                              )
                            ])),
                    if (orderModel.appointment != null)
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w300),
                                )
                              ])),
                    if (orderModel.isExpired!)
                      Container(
                          padding: EdgeInsets.all(10.w),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expired:",
                                  style: kBold400.copyWith(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Feb 27",
                                  style: kBold400.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w300),
                                )
                              ])),
                    if (!orderModel.isExpired!)
                      Container(
                        padding: EdgeInsets.all(10.w),
                        child: RichText(
                          text: TextSpan(
                              text: 'Active:\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: Colors.black),

                              // ignore: prefer_const_literals_to_create_immutables
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Apr2- Jun 2',
                                  style: kBold400.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w300),
                                ),
                              ]),
                        ),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                      color: orderModel.isExpired!
                          ? Colors.red
                          : AppColors.vhGreen,
                      borderRadius: BorderRadius.all(Radius.circular(5.r))),
                  child: Text(
                    orderModel.isExpired!
                        ? "Expired"
                        : '${orderModel.slots!.length} slots left',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          if (orderModel.slots!.isNotEmpty)
            Column(
              children: [
                SizedBox(height: 16.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: orderModel.isExpired!
                      ? VhJobsButton(
                          text: "Renew Package",
                          onPressed: () {
                            serviceLocator<NavigationService>()
                                .to(routeName: ClassicRoutes.rootClassic);
                          },
                          verticalPadding: 10.h,
                        )
                      : VhJobsButton(
                          verticalPadding: 10.h,
                          text: "Schedule Appiontment",
                          onPressed: () {}),
                ),
              ],
            ),
        ],
      ),
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
      OrderModel(
        text: "Cleaning service",
        package: "Level 3 (Four times miniflat bundled cleaning ironing)",
        slots: ["1", "2", "3", "4", "5", "6"],
        isExpired: true,
      ),
      OrderModel(
        text: "Cleaning service",
        package: "Level 3 (Four times miniflat bundled cleaning ironing)",
        slots: ["1", "2", "3", "4", "5", "6"],
        appointment: "Appointment: Apr 20",
        isExpired: false,
      ),
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
