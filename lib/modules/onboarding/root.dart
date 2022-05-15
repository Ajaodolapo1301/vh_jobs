import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:vh_jobs/modules/onboarding/route/routes.dart';
import 'package:vh_jobs/modules/onboarding/widget/indicator/dot_indicator.dart';

import '../../shared/navigation/navigation_service.dart';
import '../../shared/utils/asset_images.dart';
import '../../shared/utils/colors.dart';
import 'model/data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late int totalPages = OnBoardingItems.loadOnboardItem(context).length;
  late double width, height;
  //Page view controller to controller onboarding slide
  PageController controller = PageController();
  //Initial start of page view
  int _currentIndex = 0;
  //Animation duration
  // int _animationDuration = 600;
//Animation opacity
  double opacity = 1.0;
  late Timer timer;
  startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        if (_currentIndex < totalPages) {
          controller.animateToPage(
            _currentIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
          _currentIndex++;
        } else {
          controller.jumpToPage(0);
          _currentIndex = 0;
        }
      },
    );
  }

  cancelTimer() {
    timer.cancel();
  }

  @override
  void initState() {
    // GetIt.I<AnalyticService>().addEvent(name: "Onboarding_Page_Opened");
    // startTimer();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    cancelTimer();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
                // reverse: true,
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: totalPages,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  OnBoardingItem oi =
                      OnBoardingItems.loadOnboardItem(context)[index];
                  return Stack(
                    children: [
                      _buildImage(imgSrc: oi.image),
                      // Positioned(
                      //     left: 20.w,
                      //     top: 488.h,
                      //     right: 20.w,
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         _buildTitle(title: oi.title),
                      //         Image.asset(
                      //           oi.image,
                      //         ),
                      //         // _buildSubTitle(title: oi.subtitle),
                      //       ],
                      //     )),
                      Positioned(
                        left: 10.w,
                        right: 50.w,
                        bottom: 200.h,
                        child: SizedBox(
                          child: Column(
                            children: [
                              _buildTitle(title: oi.title),
                              SizedBox(height: 10.h),
                              _buildSubTitle(title: oi.subtitle),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Positioned(
            left: 10.w,
            top: 100.h,
            child: TopIcon(),
          ),
          Positioned(
            left: 20.w,
            right: 0.w,
            // bottom: 60.h,
            bottom: 170,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: OnBoardingItems.loadOnboardItem(context)
                        .asMap()
                        .entries
                        .map((_entry) {
                      var _key = _entry.key;
                      return Padding(
                          padding: EdgeInsets.only(right: 12.0.w),
                          child: DotIndicator(
                              isActive: _currentIndex == _key ? true : false));
                    }).toList()),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      GetIt.I
                          .get<NavigationService>()
                          .to(routeName: OnboardingRoutes.welcomePage);
                    },
                    child: Text(
                      "Skip Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    )),
                Container(
                  height: 54.h,
                  width: 54.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.vhBlue),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AssetResources.thickArrow,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildImage({required String imgSrc}) => Image.asset(
        imgSrc,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );

  Widget _buildTitle({required String title}) =>
      Container(child: Text(title, style: titleTextStyle()));

  Widget _buildSubTitle({required String title}) => Container(
      child:
          Text(title, style: titleSubTextStyle(), textAlign: TextAlign.start));

  Widget _alreadyHaveAnAccount({required String title}) =>
      Text(title, style: alreadyHaveAnAccount(), textAlign: TextAlign.start);

  titleTextStyle() => TextStyle(
      fontSize: 21.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      height: 1.3);

  titleSubTextStyle() => TextStyle(
      fontSize: 15.sp,
      color: Colors.white,
      fontWeight: FontWeight.w300,
      height: 1.3);

  alreadyHaveAnAccount() => TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      height: 1.3);

  // void goToLoginWidget() {
  //   // GetIt.I<AnalyticService>().addEvent(name: "Skip_Button_Clicked");
  //   GetIt.I<AnalyticService>().addEvent(name: "Sign_In_Button_Clicked");
  //   LocalStorageUtils.write(AppConstants.isUserFirstTime, "true");
  //
  //   // Navigator.of(context).pushReplacement(MaterialPageRoute(
  //   //     builder: (context) =>
  //   //         // isFirstTime
  //   //         //?
  //   //         const ForgotPasswordScreen()));
  //   GetIt.I.get<NavigationService>().to(routeName: AuthRoutes.initial);
  // }
}

class TopIcon extends StatelessWidget {
  const TopIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175.w,
      // height: 34.h,
      child: Column(
        children: [
          Row(children: [
            Image.asset(
              AssetResources.whiteLogo,
              height: 34.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Image.asset(AssetResources.iconName),
          ]),
          SizedBox(height: 10.h),
          Text(
            "Build and take your business to the next level",
            style: TextStyle(color: Colors.white, fontSize: 15.sp),
          )
        ],
      ),
    );
  }
}
