import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/modules/orders/widget/order_widget.dart';

import '../../shared/utils/asset_images.dart';
import '../../shared/utils/colors.dart';
import '../../shared/widgets/forms/input_text.dart';

class Orders2 extends StatefulWidget {
  const Orders2({Key? key}) : super(key: key);

  @override
  _Orders2State createState() => _Orders2State();
}

class _Orders2State extends State<Orders2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vhjobs Classic Orders',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InputText(
                              labelText: 'Search all orders',
                              prefixIcon: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child:
                                      SvgPicture.asset(AssetResources.search),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            height: 39.h,
                            width: 40.w,
                            margin: EdgeInsets.only(top: 6.h),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.vhBlue,
                                borderRadius: BorderRadius.circular(5)),
                            child: SvgPicture.asset(
                              AssetResources.filter,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ]),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffBBC1C7),
              ),
            ]),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return OrderWidget(
                    orderModel: OrderModel.listOrder(context)[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return Column(
                    children: [
                      Divider(
                        thickness: 1,
                        color: Color(0xffBBC1C7),
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  );
                },
                itemCount: OrderModel.listOrder(context).length),
          ),
        ],
      ),
    );
  }
}
