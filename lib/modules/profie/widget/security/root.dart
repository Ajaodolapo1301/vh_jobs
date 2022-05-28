import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/shared/utils/colors.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool pinCode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Security",
                style: kBold900,
              ),
              SizedBox(
                height: 24.h,
              ),
              SecurityWidget(
                isOn: pinCode,
                image: AssetResources.padlockOutline,
                text: "Pin code",
              ),
              SecurityWidget(
                isOn: pinCode,
                image: AssetResources.fingerprint,
                text: "Fingerprint access",
              ),
              SecurityWidget(
                isOn: pinCode,
                isSwitch: false,
                image: AssetResources.padlockOutline,
                text: "Reset password",
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2 - Factor authentication",
                    style: kBold900.copyWith(height: 1.0),
                  ),
                  Text(
                    "To protect your your accountm it is recommended to turnon at least one 2FA",
                    style: kBold300.copyWith(fontSize: 13.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SecurityWidget(
                isOn: pinCode,
                image: AssetResources.google,
                text: "Google authenticator",
              ),
              SecurityWidget(
                isOn: pinCode,
                image: AssetResources.emailOutline,
                text: "Email verification",
              ),
              SecurityWidget(
                isOn: pinCode,
                image: AssetResources.sms,
                text: "SMS verification",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecurityWidget extends StatefulWidget {
  bool isOn;
  final String? image;
  final String? text;
  final VoidCallback? onTap;
  bool isSwitch;
  SecurityWidget(
      {Key? key,
      this.isOn = false,
      this.image,
      this.text,
      this.onTap,
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
            SvgPicture.asset(widget.image!),
            SizedBox(
              width: 15.w,
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
        Divider(
          color: AppColors.vhBlue,
        )
      ],
    );
  }
}
