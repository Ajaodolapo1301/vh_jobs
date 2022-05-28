import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../shared/style/font_style.dart';
import '../../../../shared/utils/colors.dart';
import '../../../../shared/widgets/appbars/vhjob_appbar.dart';
import '../../../../shared/widgets/button.dart';
import '../../../../shared/widgets/forms/input_text.dart';

class UploadNationalId extends StatefulWidget {
  const UploadNationalId({Key? key}) : super(key: key);

  @override
  _UploadNationalIdState createState() => _UploadNationalIdState();
}

class _UploadNationalIdState extends State<UploadNationalId> {
  File? idFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VhjobsAppBar(
        gradientAppBar: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "National ID",
                    style: kBold900,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        _getFromGallery();
                      },
                      child: DottedBorder(
                          radius: Radius.circular(10.r),
                          color: AppColors.vhBlue,
                          strokeWidth: 1,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(6.h),
                            height: 180.h,
                            child: idFile == null
                                ? Column(
                                    children: [
                                      Text(
                                        "Tap to add images to upload",
                                        style: kBold400.copyWith(
                                            color: AppColors.vhDarkBlue,
                                            fontSize: 14.sp),
                                      ),
                                      SizedBox(height: 16.h),
                                      Text(
                                        "JPG, PNG, PDF smaller than 10MB",
                                        style: kBold400.copyWith(
                                            color: AppColors.vhDarkBlue,
                                            fontSize: 12.sp),
                                      )
                                    ],
                                  )
                                : Container(
                                    height: 174.h,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(idFile!),
                                      ),
                                      color: Colors.blue,
                                    ),
                                  ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                      "Please enter the passport number displayed on your international passport as marked above.",
                      textAlign: TextAlign.center,
                      style: kBold300.copyWith()),
                  SizedBox(
                    height: 50.h,
                  ),
                  InputText(
                    headerText: "Passport Number",
                    labelText: 'Enter your passport number',
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  VhJobsButton(
                      verticalPadding: 10.h,
                      text: "Submit",
                      onPressed: () {
                        //  serviceLocator<NavigationService>().to(routeName: AuthRoutes.root2);
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    _cropImage(pickedFile!.path);
  }

  /// Crop Image
  _cropImage(filePath) async {
    File? croppedImage = await ImageCropper().cropImage(
      sourcePath: filePath,
      maxWidth: 1080,
      maxHeight: 1080,
    );
    if (croppedImage != null) {
      idFile = croppedImage;
      setState(() {});
    }
    // Future.delayed(Duration(milliseconds: 500)).then((value) {
    //   if(idFile != null){
    //     // upload();
    //
    //   }
    // });
  }
}
