
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';

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
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.w),
                  child: Text(
                    'Vhjobs Classic Orders',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Container(
                          width: 280.sp,
                          height: 43.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffC4C4C4))),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                color: Color(0xff1C71B7),
                              ),
                              Text(
                                'Search all orders',
                                style: TextStyle(
                                  color: AppColors.vhBlue,
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xffBBC1C7),
                ),
              ],
            ),
          ],
        ));
  }
}

