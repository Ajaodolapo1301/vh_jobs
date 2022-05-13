import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../../../config/app_config.dart';
import '../../../shared/navigation/navigation_service.dart';
import '../../../shared/utils/asset_images.dart';
import '../../../shared/utils/storage.dart';
import '../route/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late bool isFirstTime;

  @override
  void initState() {
    // GetIt.I<AnalyticService>().addEvent(name: "App_Launched");

    isUserFirstTime().then((value) => isFirstTime = value);
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    _animationController.forward();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        GetIt.I
            .get<NavigationService>()
            .to(routeName: OnboardingRoutes.welcomePage);

        // GetIt.I
        //     .get<NavigationService>()
        //     .to(routeName: OnboardingRoutes.onboardingScreen);
        // GetIt.I.get<NavigationService>().pushReplace(
        //     routeName: isFirstTime
        //         ? OnboardingRoutes.onboardingScreen
        //         //             // : GetIt.I.isRegistered<LoginResponse>()
        //         //             //     ? HomeRoutes.root
        //         : OnboardingRoutes.welcomePage);

        // :const SignInScreen())
        // : GetIt.I.isRegistered<User>()
        //     ? LocationHomepage()
        //     : SignInScreen()),

      }
    });
  }

  Future<bool> isUserFirstTime() async {
    var firstTime = await LocalStorageUtils.read(AppConstants.isUserFirstTime);
    return firstTime == null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            InkWell(
              onTap: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: OnboardingRoutes.welcomePage);
              },
              child: SvgPicture.asset(
                AssetResources.logo,
                // width: 155,
                // height: 80,
              ),
            ),
            const Spacer(),
            const Text(
              'loading...',
              style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 50.h)
          ],
        ),
      ),
    );
  }
}
