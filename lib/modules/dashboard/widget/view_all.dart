import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../shared/utils/asset_images.dart';
import '../../../shared/widgets/forms/input_text.dart';
import 'dashboard_screen.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Needs",
                    style: kBold400.copyWith(fontSize: 25.sp),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: kBold300.copyWith(fontSize: 13.sp),
                  ),
                  Container(
                    child: InputText(
                      labelText: 'What do you need to get done?',
                      prefixIcon: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: SvgPicture.asset(AssetResources.search),
                        ),
                      ),
                      onTap: () {
                        // print("ddd");
                        // showPredictions();
                      },
                      keyboardType: TextInputType.visiblePassword,
                      onSaved: (val) {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 15.w,
                runSpacing: 20.h,
                children: DashboardModel.list.map((e) {
                  return DashboardWidget(
                    dashboardModel: e,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
