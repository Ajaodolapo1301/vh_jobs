// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/modules/classic/root.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Color(0xff1C71B7),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text('Search')
                ],
              ),
            ),
            margin: EdgeInsets.all(30.w),
            width: 287.w,
            height: 37.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.sp),
                border: Border.all(color: const Color(0xff000000))),
          ),
          InkWell(
            onTap: () =>  Navigator.push(
                      context,
                      MaterialPageRoute(
                          // ignore: prefer_const_constructors
                          builder: (context) => ClassicService())),
            child: Container(
              margin: EdgeInsets.only(
                left: 20.w,
                right: 10.w,
              ),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nigeria +234',
                    style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                  ),
                Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 1;
                      });
                    },
                  ),
                )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
                Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 2;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
                Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 3,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 3;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
               Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 4,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 4;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
               Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 5,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 5;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
               Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 6,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 6;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
               Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 7,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 7;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
                Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 8,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 8;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
               Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 9,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 9;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 10.w,
            ),
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nigeria +234',
                  style: TextStyle(color: Color(0xff383737), fontSize: 15.sp),
                ),
               Transform.scale(
                  scale: 1,
                  child: Radio(
                    value: 10,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = 10;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Divider(
              thickness: 2.sp,
              height: 10.h,
              color: Color(0xffB3D0E7),
            ),
          )
        ],
      ),
    );
  }
}