import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/app_startup.dart';
import '../../../../shared/navigation/navigation_service.dart';
import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../route/routes.dart';

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
                    IdentityWidget(
                      onTap: () {
                        serviceLocator<NavigationService>()
                            .to(routeName: ProfileRoutes.govtIssueId);
                      },
                      image: AssetResources.idCard,
                      text: "Goverment-issued ID",
                    ),
                    IdentityWidget(
                        image: AssetResources.document,
                        text: "Utility bill",
                        onTap: () {
                          serviceLocator<NavigationService>()
                              .to(routeName: ProfileRoutes.utilityBill);
                        }),
                    IdentityWidget(
                        image: AssetResources.user,
                        text: "Facial verification",
                        onTap: () {
                          serviceLocator<NavigationService>()
                              .to(routeName: ProfileRoutes.facial);
                        }),
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

class IdentityWidget extends StatefulWidget {
  final String? image;
  final String? text;
  final VoidCallback? onTap;

  IdentityWidget({
    Key? key,
    this.image,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  State<IdentityWidget> createState() => _IdentityWidgetState();
}

class _IdentityWidgetState extends State<IdentityWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
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
            IconButton(
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
      ),
    );
  }
}
