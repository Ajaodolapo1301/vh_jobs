// import 'dart:html';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/config/app_startup.dart';
import 'package:vh_jobs/modules/auth/root2.dart';
import 'package:vh_jobs/modules/auth/route/routes.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';
// import 'package:vh_jobs/config/app_startup.dart';
// import 'package:vh_jobs/modules/auth/route/routes.dart';
// import 'package:vh_jobs/shared/navigation/navigation_service.dart';

import '../../shared/widgets/button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: const Color(0xffF8FDFF),
          title: const Text(
            "Sign up or Log in",
            style: TextStyle(color: Color(0xff000000)),
          ),
        ),
        
        body: Container(
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: [
             SizedBox(height: 40,),
              Container(
                width: 305.w,
                height: 48.h,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff000000),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0.sp))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/svgs/onboarding/facebookIcon.png',
                    ),
                    Text(
                      'Proceed with Facebook',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 305.w,
                height: 48.h,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff000000),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0.sp))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/svgs/onboarding/Google Icon.png',
                    ),
                    Text(
                      'Proceed with Google',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10.sp, left: 20.sp),
                          child: Divider(
                    thickness: 1,
                   color: Color(0xff061725),
                  ))),
                  Text('OR'),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10.sp, left: 20.sp),
                        child: Divider(
                    thickness: 1,
                    color: Color(0xff061725),
                  ),
                      ))
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:  [
                  Text('Proceed with email',
                  style: TextStyle(
                    color: Color(0xff1C71B7)
                  ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    width: 305.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff000000),
                        ),
                        borderRadius:
                            BorderRadius.all(Radius.circular(5.0.sp))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_drop_down,
                        color: Color(0xff1C71B7),
                        ),
                        Text(
                          '(+234)',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp),
                        ),
                        Text('Enter your phone number')
                      ],
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 20.h,
              ),
            Container(
              margin: EdgeInsets.only(right: 35.w,left: 35.w, top: 15.h, bottom: 15.h),
              child: VhJobsButton(
                text: "Proceed",
                onPressed: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RadioButton())); 
                //  serviceLocator<NavigationService>().to(routeName: AuthRoutes.root2);
                  }
              ),
            ), 
             SizedBox(
                height: 40.h,
              ),
            Text('Need Help ?',
            style: TextStyle(

              color: Color(0xff061725)
            ),
            )
            ],
          ),
        ));
  }
}
