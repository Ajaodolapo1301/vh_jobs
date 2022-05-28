import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../shared/style/font_style.dart';
import '../../../../../shared/utils/colors.dart';

class SecurityWidget extends StatefulWidget {
  bool isOn;
  final String? image;
  final String? text;
  final VoidCallback? onTap;
  bool showDivider;
  bool isSwitch;
  SecurityWidget(
      {Key? key,
      this.isOn = false,
      this.image,
      this.text,
      this.onTap,
      this.showDivider = true,
      this.isSwitch = true})
      : super(key: key);

  @override
  State<SecurityWidget> createState() => _SecurityWidgetState();
}

class _SecurityWidgetState extends State<SecurityWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Row(children: [
            if (widget.image != null)
              Row(
                children: [
                  SvgPicture.asset(widget.image!),
                  SizedBox(
                    width: 15.w,
                  ),
                ],
              ),
            Text(
              widget.text!,
              style: kBold300.copyWith(fontSize: 15.sp),
            )
          ]),
          const Spacer(),
          widget.isSwitch
              ? Transform.scale(
                  scale: 0.5,
                  child: CupertinoSwitch(
                      activeColor: AppColors.vhBlue,
                      trackColor: AppColors.vhBlue.withOpacity(0.5),
                      value: widget.isOn,
                      onChanged: (value) {
                        setState(() {
                          widget.isOn = value;
                        });
                      }),
                )
              : IconButton(
                  color: AppColors.vhBlue,
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15.sp,
                  ),
                  onPressed: widget.onTap)
        ]),
        if (widget.showDivider)
          Divider(
            color: AppColors.vhBlue,
          )
      ],
    );
  }
}
