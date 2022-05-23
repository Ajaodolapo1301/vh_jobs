import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../../shared/style/border_style.dart';
import '../../../shared/style/font_style.dart';
import '../../../shared/utils/asset_images.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/widgets/forms/input_text.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            InputText(
              labelText: 'What do you need to get done?',
              prefixIcon: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SvgPicture.asset(AssetResources.search),
                ),
              ),
              onTap: () {},
              keyboardType: TextInputType.visiblePassword,
              onSaved: (val) {},
            ),
            SizedBox(
              height: 10.h,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trending needs",
                          style: kBold400.copyWith(fontSize: 25.sp),
                        ),
                        Text(
                          "View All",
                          style: kBold400.copyWith(
                              fontSize: 15.sp, color: AppColors.vhBlue),
                        )
                      ]),
                  ResponsiveGridList(
                    horizontalGridSpacing: 15.w,
                    horizontalGridMargin: 5.w,
                    verticalGridMargin: 15.h,
                    minItemWidth:
                        300, // The minimum item width (can be smaller, if the layout constraints are smaller)
                    minItemsPerRow:
                        2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                    maxItemsPerRow:
                        5, // The maximum items to show in a single row. Can be useful on large screens
                    shrinkWrap:
                        true, // shrinkWrap property of the ListView.builder()
                    children:
                        List.generate(DashboardModel.list.length, (index) {
                      return DashboardWidget(
                        dashboardModel: DashboardModel.list[index],
                      );
                    }), // The list of widgets in the list
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DashboardWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final DashboardModel? dashboardModel;

  const DashboardWidget({
    Key? key,
    this.dashboardModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 177.h,
        width: 159.w,
        decoration: kDecoration.copyWith(color: Colors.white),
        child: Column(children: [
          Expanded(child: SvgPicture.asset(dashboardModel!.image!)),
          Container(
            height: 48.h,
            width: 127.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Color(0xffF8FDFF),
                border: Border.all(color: AppColors.greyStroke)),
            child: Center(
                child: Text(
              dashboardModel!.text!,
              textAlign: TextAlign.center,
              style: kBold400.copyWith(fontSize: 15.sp),
            )),
          ),
          SizedBox(
            height: 10.w,
          )
        ]),
      ),
    );
  }
}

class DashboardModel {
  String? text;
  String? image;
  DashboardModel({this.text, this.image});
  static List<DashboardModel> list = [
    DashboardModel(text: "Make Up", image: AssetResources.makeUp),
    DashboardModel(text: "Website Development", image: AssetResources.driving),
    DashboardModel(text: "Cleaning", image: AssetResources.cooking),
    DashboardModel(text: "Mobile chef", image: AssetResources.cleaning),
  ];
}
