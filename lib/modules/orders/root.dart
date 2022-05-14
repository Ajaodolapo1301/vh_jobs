import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/config/app_startup.dart';
import 'package:vh_jobs/modules/orders/route/routes.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';

import '../../shared/widgets/button.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);



  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Container(padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/svgs/onboarding/order1.png'),
      Column(

        children: const [
          Text('Orders',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
          SizedBox(height: 20,),
          Text('Subcribe for packages or hire professionals! Your orders will show up here',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15
            ),
          ),
        ],
      ),
            VhJobsButton(
              text: "Get Started",
              onPressed: () {
                  serviceLocator<NavigationService>().to(routeName: OrderRoutes.root2);
                }
            ),



          ],
        ),
      ),
    );
  }
}
