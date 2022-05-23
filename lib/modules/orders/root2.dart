// ignore_for_file: prefer_const_constructors
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:vh_jobs/config/app_startup.dart';
import 'package:vh_jobs/modules/auth/root.dart';
// import 'package:vh_jobs/modules/auth/route/routes.dart';
// import 'package:vh_jobs/shared/navigation/navigation_service.dart';
// import 'package:intl/intl.dart';
import 'package:vh_jobs/shared/utils/colors.dart';

import '../../shared/widgets/button.dart';

class Orders2 extends StatefulWidget {
  const Orders2({Key? key}) : super(key: key);

  @override
  _Orders2State createState() => _Orders2State();
}

class _Orders2State extends State<Orders2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(left: 20.w, top: 22.w),
              child: Text(
                'Vhjobs Classic Orders',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              margin: EdgeInsets.only(left: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Container(
                      width: 280.sp,
                      height: 43.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xffC4C4C4))),
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.search,
                                  color: Color(0xff1C71B7),
                                  size: 30,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                'Search all orders',
                                style: TextStyle(
                                  color: AppColors.vhBlue,
                                ),
                              )
                            ]),
                      ),
                    )
                  ]),
                  Icon(Icons.legend_toggle)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffBBC1C7),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cleaning service',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    width: 89.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        color: Color(0xff079300),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      '2 slots left',
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
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Package:\n',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Level 3 (Four times mini flat bundled\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: 'cleaning ironing')
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Appointment: Apr 20\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Alfred Pascal',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
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
            Container(
                padding: EdgeInsets.all(15),
                child: VhJobsButton(
                    text: "Schedule Appiontment",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                      // serviceLocator<NavigationService>()
                      //     .to(routeName: AuthRoutes.root);
                    })),
            SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffBBC1C7),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cleaning service',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    width: 89.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        color: Color(0xff079300),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      '2 slots left',
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
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Package:\n',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Level 3 (Four times mini flat bundled\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: 'cleaning ironing')
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Appointment: Apr 20\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Alfred Pascal',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
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
            Container(
                padding: EdgeInsets.all(15),
                child: VhJobsButton(
                    text: "Schedule Appiontment", onPressed: () {})),
            SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffBBC1C7),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Graphic design service',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    width: 100.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        color: Color(0xff079300),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      '5 Images left',
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
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Package:\n',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Level 1 (Up to ten images)',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Appointment: Apr 20\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Alfred Pascal',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
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
            Container(
                padding: EdgeInsets.all(15),
                child: VhJobsButton(text: "Details", onPressed: () {})),
            SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffBBC1C7),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cleaning service',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    width: 100.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        color: Color(0xff934200),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      '0 slots left',
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
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Package:\n',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Level 3 (Four times miniflat bundled\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: 'cleaning ironing)')
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Appointment: Apr 20\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Alfred Pascal',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff1C71B7),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    width: 160.w,
                    height: 45.h,
                    margin: EdgeInsets.all(8.w),
                    padding: EdgeInsets.all(12.h),
                    child: Text(
                      'Renew package',
                      style:
                          TextStyle(color: Color(0xffffffff), fontSize: 16.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1C71B7)),
                        // color: Color(0xff1C71B7),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    width: 160.w,
                    height: 45.h,
                    margin: EdgeInsets.all(8.w),
                    padding: EdgeInsets.all(12.h),
                    child: Text(
                      'Upgrade package',
                      style:
                          TextStyle(color: Color(0xff1C71B7), fontSize: 16.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffBBC1C7),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cleaning service',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    width: 89.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        color: Color(0xffEF1313),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      'Expired',
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
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Package:\n',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Level 3 (Four times mini flat bundled\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: 'cleaning ironing)')
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Appointment: Apr 20\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Alfred Pascal',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Expired:\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Feb 27',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
                padding: EdgeInsets.all(15),
                child: VhJobsButton(text: "Renew package", onPressed: () {})),
            SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffBBC1C7),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cleaning service',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    width: 89.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        color: Color(0xffEF1313),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      'Expired',
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
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Package:\n',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Level 3 (Four times mini flat bundled\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: 'cleaning ironing)')
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Appointment: Apr 20\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Alfred Pascal',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w),
              padding: EdgeInsets.all(10.w),
              child: RichText(
                text: TextSpan(
                    text: 'Expired:\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff000000)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Feb 27',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            Container(
                padding: EdgeInsets.all(15),
                child: VhJobsButton(text: "Renew package", onPressed: () {})),
          ]),
        ],
      ),
    );
  }
}
