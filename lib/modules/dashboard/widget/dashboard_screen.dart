import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/config/app_startup.dart';
import 'package:vh_jobs/modules/dashboard/route/routes.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';

import '../../../shared/navigation/navigation_service.dart';
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
  OverlayEntry? predictionOverlay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: InputText(
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
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Trending needs",
                            style: kBold400.copyWith(fontSize: 25.sp),
                          ),
                          InkWell(
                            onTap: () {
                              serviceLocator<NavigationService>()
                                  .to(routeName: DashboardRoutes.viewAll);
                            },
                            child: Text(
                              "View All",
                              style: kBold400.copyWith(
                                  fontSize: 15.sp, color: AppColors.vhBlue),
                            ),
                          )
                        ]),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  void closePredictionOverlay() {
    predictionOverlay?.remove();
    predictionOverlay = null;
  }

  void showPredictions() {
    print("eeeee");
    final RenderBox? textFieldRenderBox =
        context.findRenderObject() as RenderBox?;
    final RenderBox? overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox?;
    final width = textFieldRenderBox!.size.width;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        textFieldRenderBox.localToGlobal(
            textFieldRenderBox.size.bottomLeft(Offset.zero),
            ancestor: overlay),
        textFieldRenderBox.localToGlobal(
            textFieldRenderBox.size.bottomRight(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay!.size,
    );

    predictionOverlay = OverlayEntry(builder: (context) {
      return Positioned(
          top: position.top,
          left: position.left,
          child: Container(
              width: width,
              child: Card(
                  elevation: 3.0,
                  clipBehavior: Clip.antiAlias,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(0.0))),
                  child: Container(
                    height: 448.h,
                    child: Text("sss"),
                  ))));
    });
    Overlay.of(context)!.insert(predictionOverlay!);

    predictionOverlay!.markNeedsBuild();
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
