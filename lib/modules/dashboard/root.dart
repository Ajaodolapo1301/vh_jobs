import 'package:flutter/material.dart';
import 'package:vh_jobs/modules/dashboard/widget/dashboard_screen.dart';

class DashboardRootWidget extends StatefulWidget {
  final bool isCurrent;

  const DashboardRootWidget({Key? key, required this.isCurrent})
      : super(key: key);

  @override
  _DashboardRootWidgetState createState() => _DashboardRootWidgetState();
}

class _DashboardRootWidgetState extends State<DashboardRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Offstage(
        offstage: !widget.isCurrent, child: const DashboardScreen());
  }
}
