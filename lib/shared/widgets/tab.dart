import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/tab_base_model.dart';

class AppTab<T extends TabBaseModel> extends StatelessWidget {
  final T? selectedTab;
  final List<T> tabs;
  final Function(T) onChanged;
  const AppTab({
    Key? key,
    required this.onChanged,
    this.selectedTab,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 2.5.w),
      decoration: BoxDecoration(
        color: Color(0xFFF7F7FC),
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: Color(0xFFEFF0F6)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: tabs.map((e) => Expanded(child: _tabItem(e))).toList(),
      ),
    );
  }

  Widget _tabItem(T tab) => GestureDetector(
        onTap: () {
          onChanged(tab);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: tab == selectedTab ? Colors.white : Colors.transparent,
            boxShadow: tab == selectedTab
                ? [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 1,
                      color: Colors.black.withOpacity(.4),
                    ),
                    BoxShadow(
                      blurRadius: 6,
                      spreadRadius: -6,
                      offset: const Offset(0, 6),
                      color: Colors.black.withOpacity(.16),
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: Text(
              tab.name,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight:
                    tab == selectedTab ? FontWeight.w800 : FontWeight.w500,
                color: Color(0xFF394455),
                height: 1,
              ),
            ),
          ),
        ),
      );
}
