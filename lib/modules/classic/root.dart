// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/config/app_startup.dart';
import 'package:vh_jobs/modules/classic/add_card.dart';
import 'package:vh_jobs/modules/classic/route/root_classic.dart';
import 'package:vh_jobs/modules/orders/widget/time_picker.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';

import '../../shared/navigation/navigation_service.dart';
import '../../shared/widgets/button.dart';
import '../auth/route/routes.dart';

class ClassicService extends StatelessWidget {
  const ClassicService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 247, 247),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //  padding: EdgeInsets.only(left: 10, right: 10, top: 10, ),
                  margin: EdgeInsets.all(20.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff1C71B7),
                        child: Text(
                          '1',
                          style: (TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp)),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.blue,
                          height: 10.h,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xff1C71B7),
                        child: Text(
                          '2',
                          style: (TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp)),
                        ),
                      ),
                      // SizedBox(height: 10.h,),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.blue,
                          height: 10.h,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xff1C71B7),
                        child: Text(
                          '3',
                          style: (TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20.sp)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: (TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: const Color(0xff1C71B7))),
                      ),
                      Text('Checkout',
                          style: (TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color(0xffBBC1C7)))),
                      Text('Payment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: const Color(0xffBBC1C7))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(10.h),
                  height: 250.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 244, 244),
                      border: Border.all(
                        color: const Color(0xffC4C4C4),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.all(20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Package details',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17.sp,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_up,
                              size: 40.sp,
                              color: Color(0xff061725),
                            )
                          ],
                        ),
                        const Divider(
                          color: Color(0xffB3D0E7),
                          thickness: 1,
                        ),
                        Text(
                          'Details:',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          'Levels 1, Two times cleaning and ironing in a month for 2-bedroom apartment',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15.sp,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Quantity:',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          width: 99.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 244, 244),
                              border: Border.all(
                                color: const Color(0xffC4C4C4),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.delete_outline_outlined,
                                  color: Color(0xffF94444),
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp),
                                ),
                                Icon(Icons.add)
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 180.w),
                          child: Text(
                            'Change Package',
                            style: TextStyle(color: Color(0xff1C71B7)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.h),
                  width: 350.w,
                  height: 680.h,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 244, 244),
                      border: Border.all(color: Color(0xffBBC1C7)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.all(15.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery information',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17.sp,
                            ),
                          ),
                          const Divider(
                            color: Color(0xffBBC1C7),
                            thickness: 1,
                          ),
                          Text(
                            'Enter your phone Number',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14.sp),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(8),
                            width: 296.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff000000),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0.sp))),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xff1C71B7),
                                ),
                                Text(
                                  '(+234)',
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(width: 8.w),
                                Text('7032502259'),
                                SizedBox(width: 50.w),
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  width: 51.w,
                                  height: 21.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xff1C71B7),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0.sp))),
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(color: Color(0xfffffffff)),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Full name',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14.sp),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  maxLines: 1,
                                  minLines: 1,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      labelText: 'Firstname\n Hanaan',
                                      hintText: 'Enter Your Name'),
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  maxLines: 1,
                                  minLines: 1,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      labelText: 'Salaudeen',
                                      hintText: 'Enter Your Surname'),
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Select Address'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  labelText: 'Address',
                                  ),
                            ),
                          ),

                          // Container(
                          //   width: 296.w,
                          //   height: 90.5.h,
                          //   decoration: BoxDecoration(
                          //       border: Border.all(
                          //         color: Color(0xff000000),
                          //       ),
                          //       borderRadius:
                          //           BorderRadius.all(Radius.circular(5.0.sp))),
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.end,
                          //     children: [
                          //       Container(
                          //         margin: EdgeInsets.all(6.h),
                          //         padding: EdgeInsets.all(3.w),
                          //         width: 77.5.w,
                          //         height: 21.h,
                          //         decoration: BoxDecoration(
                          //             color: Color(0xff1C71B7),
                          //             borderRadius: BorderRadius.all(
                          //                 Radius.circular(5.0.sp))),
                          //         child: Row(
                          //           children: [
                          //             Icon(
                          //               Icons.add,
                          //               color: Color(0xfffffffff),
                          //               size: 15.sp,
                          //             ),
                          //             Text(
                          //               'Add New',
                          //               style: TextStyle(
                          //                   color: Color(0xfffffffff),
                          //                   fontSize: 11.sp),
                          //               textAlign: TextAlign.center,
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //       Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceAround,
                          //         children: [
                          //           Text(
                          //             'No 34, War college Estate\n gwarimpa 3rd avenue, Abuja FCT',
                          //             style: TextStyle(
                          //               fontSize: 13.sp,
                          //               fontWeight: FontWeight.w300,
                          //               color: Color(0xff061725),
                          //             ),
                          //           ),
                          //           Icon(
                          //             Icons.keyboard_arrow_down,
                          //             size: 40.sp,
                          //           ),
                          //         ],
                          //       )
                          //     ],
                          //   ),
                          // ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Pick date and time for the \n commencement date',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            width: 296.w,
                            height: 213.h,
                            decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0.sp))),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text('April 2022'),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Container(
                    width: 335.w,
                    height: 299.h,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius:
                            BorderRadius.all(Radius.circular(5.0.sp))),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Additional Information',
                                style: TextStyle(
                                    fontSize: 17.sp, fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.keyboard_arrow_up_sharp,
                                size: 40.sp,
                              )
                            ],
                          ),
                          Divider(
                           
                            color: Color(0xffB3D0E7),
                            thickness: 1,
                          ),
                          Container(
                            width: 296.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffBBC1C7),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0.sp))),
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Meal options',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 30.sp,
                                  )
                                ],
                              ),
                            ),
                          ),
                      
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text(
                                'Add a note the order',
                                style: TextStyle(
                                    fontSize: 15.sp, fontWeight: FontWeight.w400),
                              ),

                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  padding: EdgeInsets.all(5.h),
                                  width: 296.w,
                                  height: 107.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffBBC1C7),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0.sp))),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                   
                                    children: [
                                      
                                        Container(
                                          margin: EdgeInsets.all(5.h),
                                          child: Image.asset(
                                              'assets/images/onboarding/chatIcon.png'),
                                        ),
                                      SizedBox(width: 5.w,),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                            // padding: EdgeInsets.all(5.h),
                                          child: Text(
                                            'Leave a note for your order, this message is \n going to be pass across to your service\n  provider for all appointment. \n 0/2000 Characters',
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: VhJobsButton(
                text: "Proceed Payment",
                onPressed: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCard())); 
                  // serviceLocator<NavigationService>().to(routeName: ClassicRoutes.rootClassic);
                    }
              ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
