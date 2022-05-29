import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:vh_jobs/modules/classic/widget/status/src/component/connect_indicator.dart';
import 'package:vh_jobs/modules/classic/widget/status/src/component/status_change_tile_builder.dart';
import 'package:vh_jobs/modules/classic/widget/status/src/status_view.dart';
import 'package:vh_jobs/modules/classic/widget/status/src/theme/connect_indicator_theme.dart';
import 'package:vh_jobs/modules/classic/widget/status/src/theme/indicator_theme.dart';
import 'package:vh_jobs/modules/classic/widget/status/src/theme/status_change_theme.dart';

import '../../shared/style/font_style.dart';
import '../../shared/utils/colors.dart';
import '../../shared/widgets/appbars/vhjob_appbar.dart';
import 'widget/status/src/component/indicators.dart';

enum Pages { delivery, checkout, payment }

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _processIndex = 0;
  Pages pages = Pages.delivery;
  int upperBound = 2;

  int activeStep = 2;

  bool timeSelectedExpress = false;
  bool standard = true;
  bool scheduleLater = false;
  String? _scheduleDate;
  TextEditingController scheduleController = TextEditingController();

  DateFormat dateFormat = DateFormat("dd/MM/yyyy");

  Map<String, dynamic> formField = {};
  List process = ["Delivery", "Checkout", "Payment"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(),
      body: SafeArea(
        bottom: false,
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                  child: StatusChange.tileBuilder(
                      theme: StatusChangeThemeData(
                        indicatorTheme:
                            IndicatorThemeData(color: AppColors.vhBlue),
                        direction: Axis.horizontal,
                        connectorTheme: const ConnectorThemeData(
                            space: 3.0, thickness: 2.0),
                      ),
                      builder: StatusChangeTileBuilder.connected(
                          contentWidgetBuilder: (context, index) {
                            return Container();
                          },
                          itemWidth: (_) =>
                              MediaQuery.of(context).size.width /
                              process.length,
                          nameWidgetBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                process[index],
                                style: kBold400.copyWith(
                                    color: getColor(index, _processIndex)),
                              ),
                            );
                          },
                          indicatorWidgetBuilder: (_, index) {
                            if (index <= _processIndex) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (index == 0) {
                                      _processIndex = 0;
                                      pages = Pages.delivery;
                                    } else if (index == 1) {
                                      _processIndex--;
                                      pages = Pages.checkout;
                                    } else if (index == 2) {
                                      _processIndex--;
                                      pages = Pages.payment;
                                    }
                                  });
                                },
                                child: DotIndicator(
                                  size: 35.0,
                                  color: const Color(0xffEAEAEA),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.vhBlue),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return DotIndicator(
                                size: 35.0,
                                color: const Color(0xffEAEAEA),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                  ),
                                ),
                              );
                            }
                          },
                          lineWidgetBuilder: (index) {
                            if (index > 0) {
                              if (index == _processIndex) {
                                final prevColor =
                                    getColor(index - 1, _processIndex);
                                final color = getColor(index, _processIndex);
                                var gradientColors;
                                gradientColors = [
                                  prevColor,
                                  Color.lerp(prevColor, color, 0.5)
                                ];
                                return DecoratedLineConnector(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: gradientColors,
                                    ),
                                  ),
                                );
                              } else {
                                return SolidLineConnector(
                                  color: getColor(index, _processIndex),
                                );
                              }
                            } else {
                              return null;
                            }
                          },
                          itemCount: process.length)),
                ),
                pages == Pages.delivery
                    ? Text("Delivery")
                    : pages == Pages.checkout
                        ? Text("Delivery")
                        : Text("payment")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(int index, _processIndex) {
    if (index == _processIndex) {
      return Colors.grey;
    } else if (index < _processIndex) {
      return Colors.grey;
    } else {
      return Colors.grey;
    }
  }
  // void move({
  //   v,
  // }) {
  //   if (v == 1) {
  //     pages = Pages.Receiver;
  //   } else if (v == 2) {
  //     pages = Pages.Review;
  //   } else if (v == 3) {
  //     createOrder();
  //   }
  // }

}
