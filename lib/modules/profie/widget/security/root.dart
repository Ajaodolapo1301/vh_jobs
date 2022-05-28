import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import 'widget/security_widget.dart';

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
