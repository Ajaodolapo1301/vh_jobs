import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/forms/custom_text_field.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController address = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController houseApartment = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        titleText: "Your Address",
        elevation: 1,
        // leadingIcon: Icon(Icons.close, color: Colors.black),
        titleTextStyle: TextStyle(
            fontSize: 18.sp,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            height: 1.4),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CustomTextField(
              useMargin: false,
              hint: "Address Feed (e.g Home, Office, Family)",
              textEditingController: address,

              validator: (v) {
                if (v!.isEmpty) {
                  return "Empty";
                }

                return null;
              },
              // header: "First and Last Name",
            ),
            Divider(
              color: AppColors.vhBlue,
            ),
            CustomTextField(
              useMargin: false,
              hint: "Street or Estate & Number",
              textEditingController: street,
              validator: (v) {
                if (v!.isEmpty) {
                  return "Empty";
                }

                return null;
              },
              // header: "First and Last Name",
            ),
            Divider(
              color: AppColors.vhBlue,
            ),
            CustomTextField(
              hint: "House or Apartment Number",
              useMargin: false,
              textEditingController: houseApartment,

              validator: (v) {
                if (v!.isEmpty) {
                  return "Empty";
                }

                return null;
              },
              // header: "First and Last Name",
            ),
            Divider(
              color: AppColors.vhBlue,
            ),
            CustomTextField(
              useMargin: false,
              hint: "City",
              textEditingController: city,

              validator: (v) {
                if (v!.isEmpty) {
                  return "Empty";
                }

                return null;
              },
              // header: "First and Last Name",
            ),
            Divider(
              color: AppColors.vhBlue,
            ),
            CustomTextField(
              useMargin: false,
              textEditingController: state,
              hint: "State",
              validator: (v) {
                if (v!.isEmpty) {
                  return "Empty";
                }

                return null;
              },
              // header: "First and Last Name",
            ),
          ],
        ),
      ),
    );
  }
}
