// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get_it/get_it.dart';
//
// import '../../../shared/utils/colors.dart';
// import '../../../shared/widgets/button.dart';
// import 'model/data.dart';
// import 'widget/indicator/dot_indicator.dart';
//
// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);
//
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen>
//     with SingleTickerProviderStateMixin {
//   late int totalPages = OnBoardingItems.loadOnboardItem(context).length;
//   late double width, height;
//   //Page view controller to controller onboarding slide
//   PageController controller = PageController();
//   //Initial start of page view
//   int _currentIndex = 0;
//   //Animation duration
//   // int _animationDuration = 600;
// //Animation opacity
//   double opacity = 1.0;
//   late Timer timer;
//   startTimer() {
//     timer = Timer.periodic(
//       const Duration(seconds: 2),
//       (timer) {
//         if (_currentIndex < totalPages) {
//           controller.animateToPage(
//             _currentIndex,
//             duration: const Duration(milliseconds: 300),
//             curve: Curves.easeIn,
//           );
//           _currentIndex++;
//         } else {
//           controller.jumpToPage(0);
//           _currentIndex = 0;
//         }
//       },
//     );
//   }
//
//   cancelTimer() {
//     timer.cancel();
//   }
//
//   @override
//   void initState() {
//     GetIt.I<AnalyticService>().addEvent(name: "Onboarding_Page_Opened");
//     startTimer();
//
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     controller.dispose();
//     cancelTimer();
//   }
//
//   _onPageChanged(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     width = MediaQuery.of(context).size.width;
//     height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: PageView.builder(
//                 // reverse: true,
//                 scrollDirection: Axis.horizontal,
//                 controller: controller,
//                 itemCount: totalPages,
//                 onPageChanged: _onPageChanged,
//                 itemBuilder: (context, index) {
//                   OnBoardingItem oi =
//                       OnBoardingItems.loadOnboardItem(context)[index];
//                   return Stack(
//                     children: [
//                       _buildImage(imgSrc: oi.image),
//                       Positioned(
//                           left: 20.w,
//                           top: 488.h,
//                           right: 20.w,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               _buildTitle(title: oi.title),
//                               SvgPicture.asset(
//                                 oi.image,
//                               ),
//                               // _buildSubTitle(title: oi.subtitle),
//                             ],
//                           )),
//                       Positioned(
//                         left: 20.w,
//                         right: 0.w,
//                         top: 558.h,
//                         child: _buildSubTitle(title: oi.subtitle),
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//           Positioned(
//               left: 324.w,
//               right: 0.w,
//               top: 72.h,
//               child: TextButton(
//                   onPressed: goToLoginWidget,
//                   child: Text(
//                     S.of(context).skip,
//                     style: TextStyle(
//                         color: AppColors.goMechoRed[100],
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w400),
//                   ))),
//           Positioned(
//             left: 20.w,
//             right: 0.w,
//             // bottom: 60.h,
//             top: 593.h,
//             child: Row(
//               // mainAxisAlignment: MainAxisAlignment.end,
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: OnBoardingItems.loadOnboardItem(context)
//                         .asMap()
//                         .entries
//                         .map((_entry) {
//                       var _key = _entry.key;
//                       return Padding(
//                           padding: EdgeInsets.only(right: 12.0.w),
//                           child: DotIndicator(
//                               isActive: _currentIndex == _key ? true : false));
//                     }).toList()),
//               ],
//             ),
//           ),
//           Positioned(
//               left: 20.w,
//               right: 20.w,
//               top: 646.h,
//               child: MechoButton(
//                 height: 50.h,
//                 width: 335.w,
//                 text: S.of(context).selectYourCar,
//                 textColor: AppColors.goMechoWhite,
//                 fontSize: 16.sp,
//                 onPressed: () {},
//               )),
//           Positioned(
//               left: 75.w,
//               right: 0.w,
//               top: 728.h,
//               child: Row(
//                 children: [
//                   _alreadyHaveAnAccount(
//                       title: S.of(context).alreadyHaveAnAccount),
//                   TextButton(
//                     onPressed: () {
//                       goToLoginWidget();
//                     },
//                     child: Text(
//                       "Login",
//                       style: TextStyle(
//                           fontSize: 16.sp,
//                           color: AppColors.goMechoRed[100],
//                           decoration: TextDecoration.underline,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   )
//                 ],
//               ))
//         ],
//       ),
//     );
//   }
//
//   Widget _buildImage({required String imgSrc}) => Image.asset(
//         imgSrc,
//         fit: BoxFit.cover,
//         // width: double.infinity,
//         width: 4578.w,
//         height: 11935.h,
//       );
//
//   Widget _buildTitle({required String title}) =>
//       Text(title, style: titleTextStyle(), textAlign: TextAlign.start);
//
//   Widget _buildSubTitle({required String title}) =>
//       Text(title, style: titleSubTextStyle(), textAlign: TextAlign.start);
//
//   Widget _alreadyHaveAnAccount({required String title}) =>
//       Text(title, style: alreadyHaveAnAccount(), textAlign: TextAlign.start);
//
//   titleTextStyle() => TextStyle(
//       fontSize: 24.sp,
//       color: AppColors.goMechoWhite,
//       fontWeight: FontWeight.w400,
//       height: 1.3);
//
//   titleSubTextStyle() => TextStyle(
//       fontSize: 15.sp,
//       color: AppColors.goMechoWhite,
//       fontWeight: FontWeight.w400,
//       height: 1.3);
//
//   alreadyHaveAnAccount() => TextStyle(
//       fontSize: 16.sp,
//       color: AppColors.goMechoWhite,
//       fontWeight: FontWeight.w400,
//       height: 1.3);
//
//   // void goToLoginWidget() {
//   //   // GetIt.I<AnalyticService>().addEvent(name: "Skip_Button_Clicked");
//   //   GetIt.I<AnalyticService>().addEvent(name: "Sign_In_Button_Clicked");
//   //   LocalStorageUtils.write(AppConstants.isUserFirstTime, "true");
//   //
//   //   // Navigator.of(context).pushReplacement(MaterialPageRoute(
//   //   //     builder: (context) =>
//   //   //         // isFirstTime
//   //   //         //?
//   //   //         const ForgotPasswordScreen()));
//   //   GetIt.I.get<NavigationService>().to(routeName: AuthRoutes.initial);
//   // }
// }
