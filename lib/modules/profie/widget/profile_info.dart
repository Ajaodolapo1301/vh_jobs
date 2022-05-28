import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../shared/utils/asset_images.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/widgets/button.dart';
import '../../../shared/widgets/cache_image.dart';
import '../../../shared/widgets/forms/custom_text_field.dart';
import '../../../shared/widgets/forms/input_drop_down.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  TextEditingController firstname = TextEditingController(text: "Joh Doe");
  TextEditingController dob = TextEditingController(text: "Dec 24, 1977");
  TextEditingController email =
      TextEditingController(text: "Johndoe232@gmail.com");
  TextEditingController phone =
      TextEditingController(text: "+234 813 1415 2154");

  String? maritalStatus;
  String? occupation;
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
                "Personal information",
                style: kBold900,
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      VhCacheImage(
                        height: 75.h,
                        width: 75.h,
                        borderRadius: 360,
                        imgUrl: AssetResources.one,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change image",
                          style: kBold400.copyWith(
                              fontSize: 15.sp,
                              color: AppColors.vhBlue,
                              letterSpacing: 0.6),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EDIT PERSONAL INFORMATION",
                    style: kBold400.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                  Divider(
                    color: AppColors.vhBlue,
                  ),
                  CustomTextField(
                    useMargin: false,
                    textEditingController: firstname,
                    prefix: AssetResources.person,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Empty";
                      }

                      return null;
                    },
                    header: "First and Last Name",
                  ),
                  Divider(
                    color: AppColors.vhBlue,
                  ),
                  CustomTextField(
                    useMargin: false,
                    textEditingController: dob,
                    prefix: AssetResources.calendarDate,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Empty";
                      }

                      return null;
                    },
                    header: "First and Last Name",
                  ),
                  Divider(
                    color: AppColors.vhBlue,
                  ),
                  CustomTextField(
                    useMargin: false,
                    textEditingController: email,
                    prefix: AssetResources.emailOutline,
                    suffix: VerifyBadge(
                      isVerified: true,
                    ),
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Empty";
                      }

                      return null;
                    },
                    header: "First and Last Name",
                  ),
                  Divider(
                    color: AppColors.vhBlue,
                  ),
                  CustomTextField(
                    useMargin: false,
                    textEditingController: phone,
                    prefix: AssetResources.phone,
                    suffix: VerifyBadge(
                      isVerified: false,
                    ),
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Empty";
                      }

                      return null;
                    },
                    header: "First and Last Name",
                  ),
                  Divider(
                    color: AppColors.vhBlue,
                  ),
                  InputDropDown<String>(
                    value: maritalStatus,
                    header: "Marital Status",
                    isloading: false,
                    options: ["1", "2", "3", "4"],
                    // widget.incomeAccountList,
                    label: "Select your marital status ",
                    validator: (v) {
                      if (v == null) {
                        return "Field is required";
                      }
                      return null;
                    },
                    onChanged: (v) {
                      maritalStatus = v;
                      setState(() {});
                    },
                    getLabel: (String value) => value,
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  InputDropDown<String>(
                    value: occupation,
                    header: "Occupation",
                    isloading: false,
                    options: ["1", "2", "3", "4"],
                    // widget.incomeAccountList,
                    label: "Tell us your occupation",
                    validator: (v) {
                      if (v == null) {
                        return "Field is required";
                      }
                      return null;
                    },
                    onChanged: (v) {
                      occupation = v;
                      setState(() {});
                    },
                    getLabel: (String value) => value,
                  ),
                  SizedBox(height: 30.h),
                  VhJobsButton(
                      text: "Save",
                      onPressed: () {
                        //  serviceLocator<NavigationService>().to(routeName: AuthRoutes.root2);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VerifyBadge extends StatelessWidget {
  final bool isVerified;
  const VerifyBadge({Key? key, this.isVerified = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: isVerified ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(3.r)),
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
        child: Text(
          isVerified ? "Verified" : "Verify now",
          style: kBold400.copyWith(fontSize: 9.sp, color: Colors.white),
        ));
  }
}
