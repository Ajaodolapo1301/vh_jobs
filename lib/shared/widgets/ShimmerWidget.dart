import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangle({this.width = double.infinity, this.height}): this.shapeBorder = const  RoundedRectangleBorder();

  const ShimmerWidget.circle({this.width = double.infinity, this.height}): this.shapeBorder = const CircleBorder();


  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Color(0xffEEEFF2),
      highlightColor: Color(0xffEEEFF2).withOpacity(0.4),
      child: Container(
        width: width,
        height: height,
        decoration:
            ShapeDecoration(color: Colors.grey[400], shape: shapeBorder),
      ),
    );
  }
}
