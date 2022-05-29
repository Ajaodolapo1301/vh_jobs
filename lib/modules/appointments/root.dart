import 'package:flutter/material.dart';
import 'package:vh_jobs/modules/dashboard/widget/dashboard_screen.dart';

import 'widgets/appointment_widget.dart';

class AppointmentRootWidget extends StatefulWidget {
  final bool isCurrent;

  const AppointmentRootWidget({Key? key, required this.isCurrent})
      : super(key: key);

  @override
  _AppointmentRootWidgetState createState() => _AppointmentRootWidgetState();
}

class _AppointmentRootWidgetState extends State<AppointmentRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !widget.isCurrent,
      child: const AppointmentWidget(),
    );
  }
}


// appBar: VhjobsAppBar(
//         elevation: 0,
//         centerTitle: true,
//       ),