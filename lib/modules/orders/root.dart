import 'package:flutter/material.dart';
import 'package:vh_jobs/modules/orders/root2.dart';

class OrderRootWidget extends StatefulWidget {
  final bool isCurrent;

  const OrderRootWidget({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _OrderRootWidgetState createState() => _OrderRootWidgetState();
}

class _OrderRootWidgetState extends State<OrderRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Offstage(offstage: !widget.isCurrent, child: const Orders2());
  }
}
