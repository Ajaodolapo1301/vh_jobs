import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../security/root.dart';

class IdentityVerification extends StatefulWidget {
  const IdentityVerification({Key? key}) : super(key: key);

  @override
  _IdentityVerificationState createState() => _IdentityVerificationState();
}

class _IdentityVerificationState extends State<IdentityVerification> {
  bool pinCode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Identity verification",
                      style: kBold900,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                      decoration: BoxDecoration(
                          color: Color(0xff934200),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.r),
                              bottomLeft: Radius.circular(40.r))),
                      child: Text(
                        "Verify now",
                        style: kBold400.copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Requirements",
                      style: kBold700,
                    ),
                    Divider(
                      color: AppColors.vhBlue,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SecurityWidget(
                      isOn: pinCode,
                      isSwitch: false,
                      image: AssetResources.idCard,
                      text: "Goverment-issued ID",
                    ),
                    SecurityWidget(
                      isOn: pinCode,
                      isSwitch: false,
                      image: AssetResources.document,
                      text: "Utility bill",
                    ),
                    SecurityWidget(
                      isOn: pinCode,
                      isSwitch: false,
                      image: AssetResources.user,
                      text: "Facial verification",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
