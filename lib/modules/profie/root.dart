import 'package:flutter/material.dart';
import 'package:vh_jobs/modules/profie/widget/profile_screen.dart';

class ProfileRootWidget extends StatefulWidget {
  final bool isCurrent;

  const ProfileRootWidget({Key? key, required this.isCurrent})
      : super(key: key);

  @override
  _ProfileRootWidgetState createState() => _ProfileRootWidgetState();
}

class _ProfileRootWidgetState extends State<ProfileRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Offstage(offstage: !widget.isCurrent, child: const ProfileScreen());
  }
}
