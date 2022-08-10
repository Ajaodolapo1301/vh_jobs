import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/app_startup.dart';
import '../../../../shared/navigation/navigation_service.dart';
import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/asset_images.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/button.dart';
import '../../../../shared/widgets/cache_image.dart';
import '../../route/routes.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Manage address",
              style: kBold900,
            ),
            SizedBox(
              height: 24.h,
            ),
            const VhCacheImage(
              imgUrl: AssetResources.emptyAddress,
              height: 230,
              width: 30,
            ),
            VhJobsButton(
                text: "Enter your address",
                onPressed: () {
                  serviceLocator<NavigationService>()
                      .to(routeName: ProfileRoutes.addresslist);
                }),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}
