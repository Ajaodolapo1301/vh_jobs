import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';

class ReferralHistory extends StatefulWidget {
  const ReferralHistory({Key? key}) : super(key: key);

  @override
  _ReferralHistoryState createState() => _ReferralHistoryState();
}

class _ReferralHistoryState extends State<ReferralHistory> {
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
                "Referrals",
                style: kBold900,
              ),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
