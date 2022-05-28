import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../security/widget/security_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool pinCode = false;
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
                "Notification",
                style: kBold900,
              ),
              SizedBox(
                height: 24.h,
              ),
              SecurityWidget(
                isOn: pinCode,
                showDivider: false,
                text: "Show notification",
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "IF APPOINTMENT STATUS CHANGES, NOTIFY ME BY ",
                  style: kBold400,
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Push notification",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Email",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "SMS verification",
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "IF I RECEIVED A QUOTATION, NOTIFY ME BY  ",
                  style: kBold400,
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Push notification",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Email",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "SMS verification",
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "IF MATCHED WITH A SERVICE PROVIDER, NOTIFY ME BY",
                  style: kBold400,
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Push notification",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Email",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "SMS verification",
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "VHJOBS OFFERS, UPDATES, NEWSLETTER, NOTIFY ME BY",
                  style: kBold400,
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Push notification",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "Email",
                ),
                SecurityWidget(
                  isOn: pinCode,
                  text: "SMS verification",
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
