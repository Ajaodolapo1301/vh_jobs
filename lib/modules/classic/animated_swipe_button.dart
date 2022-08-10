// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedSwipeButton extends StatefulWidget {
  const AnimatedSwipeButton({Key? key, this.width = 35, this.height = 17})
      : super(key: key);

  final double? width;
  final double? height;

  @override
  State<AnimatedSwipeButton> createState() => _AnimatedSwipeButtonState();
}

class _AnimatedSwipeButtonState extends State<AnimatedSwipeButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    

    return Transform.scale(
        scale: 1,
        child: Switch(
          onChanged: toggleSwitch,
          value: isSwitched,
          activeColor: Colors.blue,
          activeTrackColor: Colors.blue,
          inactiveThumbColor: Colors.white,
          inactiveTrackColor:  Color(0xffB3D0E7),
        ));

    //   return LayoutBuilder(builder: (context, constraints) {
    //     _maxWidth = constraints.maxWidth;

    //     return Stack(children: [
    //       Container(
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10.r),
    //             color: Color(0xffB3D0E7),
    //           ),
    //           width: 35.w,
    //           height: 17.h),
    //       Padding(
    //         padding: const EdgeInsets.all(1.0),
    //         child: GestureDetector(
    //           onVerticalDragUpdate: _onDragUpdate,
    //           onVerticalDragEnd: _onDragEnd,
    //           child: CircleAvatar(
    //             backgroundColor: Colors.white,
    //             radius: 8.r,
    //           ),
    //         ),
    //       ),
    //     ]);
    //   });
    // }

    // void _onDragUpdate(DragUpdateDetails details) {
    //   setState(() {
    //     _dragValue = (details.globalPosition.dx) / _maxWidth;
    //     _dragWidth = _maxWidth * _dragValue;
    //   });
    // }

    // void _onDragEnd(DragEndDetails details) {
    //   if (_dragValue > .9) {
    //     _dragValue = 1;
    //   } else {
    //     _dragValue = 0;
    //   }
    //   setState(() {
    //     _dragWidth = _maxWidth * _dragValue;
    //   });
    // }
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }
}
