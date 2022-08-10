// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/modules/classic/animated_swipe_button.dart';
import 'package:vh_jobs/shared/widgets/button.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/onboarding/card.png'),
            Text(
              'Card Details',
              style: TextStyle(
                  color: const Color(0xff1C71B7),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w700),
            ),
            Divider(
              color: const Color(0xffB3D0E7),
              thickness: 1.sp,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.4),
                  child: Text(
                    'Cardholder Name',
                    style: TextStyle(
                        color: const Color(0xff061725),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 173, 173, 173)),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Hanaan Salaudeen',
                        hintText: 'Enter Your Name'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.4),
                  child: Text(
                    'Card Number',
                    style: TextStyle(
                        color: const Color(0xff061725),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 173, 173, 173),
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'XXX XXX XXX 1223',
                        hintText: 'Input your card number'),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      // Image.asset('name')
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        TextField(
                          maxLines: 1,
                          minLines: 1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                // ignore: prefer_const_constructors
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 173, 173, 173),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              labelText: 'MM/YY',
                              hintText: 'Month/Year'),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            // Image.asset('name')
                          ],
                        ),
                        Expanded(
                          child: TextField(
                            textInputAction: TextInputAction.next,
                            maxLines: 1,
                            minLines: 1,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  // ignore: prefer_const_constructors
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 173, 173, 173),
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                labelText: 'XXX',
                                hintText: ''),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              // Image.asset('name')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    AnimatedSwipeButton(),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Save credit card details, it is safe',
                      style: TextStyle(
                          color: const Color(0xff061725),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
            VhJobsButton(
                text: "Add card",
                onPressed: () {
                  Navigator.push(
                      context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => AddCard()));
                  // serviceLocator<NavigationService>().to(routeName: ClassicRoutes.rootClassic);
                }),
          ],
        ),
      )),
    );
  }
}
