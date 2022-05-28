import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotIndicator extends StatefulWidget {
  final bool isActive;

  const DotIndicator({Key? key, required this.isActive}) : super(key: key);
  @override
  _DotIndicatorState createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return widget.isActive
        ? AnimatedContainer(
            duration: Duration(milliseconds: 150),
            height: 4.h,
            width: 47.w,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))))
        : AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            height: 4.h,
            width: 24.w,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10.0))));
  }
}
