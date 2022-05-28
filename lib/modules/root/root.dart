import 'package:flutter/material.dart';

import '../../shared/widgets/appbars/vhjob_appbar.dart';
import '../dashboard/root.dart';
import '../orders/root.dart';
import '../profie/root.dart';
import 'widgets/bottom_nav.dart';

class RootWidget extends StatefulWidget {
  final Tabs? currentTab;

  RootWidget({Key? key, required this.currentTab}) : super(key: key);
  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  late Tabs currentTab;

  @override
  void initState() {
    currentTab = widget.currentTab ?? Tabs.home;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          DashboardRootWidget(
            isCurrent: currentTab == Tabs.home,
            key: Key(Tabs.home.name),
          ),
          // ProductRootWidget(
          //   isCurrent: currentTab == Tabs.product,
          //   key: Key(Tabs.product.name),
          // ),
          OrderRootWidget(
            isCurrent: currentTab == Tabs.order,
            key: Key(Tabs.order.name),
          ),
          ProfileRootWidget(
            isCurrent: currentTab == Tabs.profile,
            key: Key(Tabs.profile.name),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(
        currentTab: currentTab,
        didSelectTab: (tab) {
          setState(() {
            currentTab = tab;
          });
        },
      ),
    );
  }
}
