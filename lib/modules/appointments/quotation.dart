import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:vh_jobs/modules/appointments/routes/route.dart';
import 'package:vh_jobs/shared/navigation/navigation_service.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';
import 'package:vh_jobs/shared/widgets/button.dart';
import 'package:vh_jobs/shared/widgets/cache_image.dart';

class MealQoutationScreen extends StatefulWidget {
  const MealQoutationScreen({Key? key}) : super(key: key);

  @override
  State<MealQoutationScreen> createState() => _MealQoutationScreenState();
}

class _MealQoutationScreenState extends State<MealQoutationScreen> {
  bool _packageDetailsExpanded = false;

  final List<String> selectedMeals = [
    'Jollof Rice',
    'Egusi soup1',
    'Egusi soup2',
    'Egusi soup2',
    'Egusi soup2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        leadingIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            size: 24.w,
            color: AppColors.dark5,
          ),
        ),
        titleText: 'Quotation',
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 22.h),
            Text(
              'Select meals',
              style: AppStyles.bodyLargeBold,
            ),
            SizedBox(height: 8.h),
            Container(
              width: 335.w,
              padding:
                  EdgeInsets.symmetric(horizontal: 20.75.w, vertical: 17.5.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(0, 2),
                    color: Colors.black.withOpacity(.15),
                  ),
                  BoxShadow(
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                    color: Colors.black.withOpacity(.3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 10.w,
                    runSpacing: 8.h,
                    children: selectedMeals
                        .map(
                          (e) => _mealTag(meal: e),
                        )
                        .toList(),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Edit',
                      style: AppStyles.button.copyWith(color: AppColors.color1),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 31.h),
            Text(
              'Review groceries price',
              style: AppStyles.bodyLargeBold,
            ),
            SizedBox(height: 8.h),
            ...selectedMeals.map((e) => _ingredientTile(e)).toList()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: AppColors.color5),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Total to pay',
              style: AppStyles.headline3,
            ),
            Text(
              'N25,000',
              style: AppStyles.headline3ExtraBold
                  .copyWith(color: AppColors.color1),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VhJobsButton(
                  width: 143.w,
                  text: 'Decline',
                  type: ButtonType.outlined,
                  textColor: AppColors.dark5,
                  borderColor: AppColors.innerBorder,
                  onPressed: _declineConfirmDialog,
                ),
                VhJobsButton(
                  width: 143.w,
                  text: 'Pay now',
                  onPressed: _paynowConfirmDialog,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _ingredientTile(String meal) => Container(
        margin: EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColors.innerBorder),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: ExpansionTile(
            // tilePadding:
            //     EdgeInsets.symmetric(vertical: 13.h, horizontal: 22.w),
            onExpansionChanged: (val) {
              _packageDetailsExpanded = val;
              setState(() {});
            },
            backgroundColor: Colors.white,
            collapsedBackgroundColor: Colors.white,
            title: Text(
              meal,
              style: AppStyles.bodySmallBold,
            ),
            trailing: Icon(
              _packageDetailsExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: AppColors.dark5,
            ),
            childrenPadding: EdgeInsets.symmetric(horizontal: 18.w),
            expandedAlignment: Alignment.topLeft,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: AppColors.color1,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Text('Add/ Remove groceries', style: AppStyles.button),
              ),
              SizedBox(height: 16.h),
              ...List.generate(4, (index) => _ingredientItem()),
            ],
          ),
        ),
      );

  Widget _ingredientItem() => Container(
        margin: EdgeInsets.only(bottom: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 11.h),
        decoration: BoxDecoration(
          color: AppColors.color6,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: VhCacheImage(
                imgUrl:
                    'https://s3-alpha-sig.figma.com/img/7329/71fb/61cf02a81fc62b7e7952656a0e39c76b?Expires=1654473600&Signature=c628SvB5Dy8FAR7Yh0KY45nEawnJTRR7vRXKMsMVjClCuKkqpase-VazWPmS17CzEf2Z7m8OXQCQ4B~Y46Uf47Z-OVsmIEkaqi8zw24vjaq~LTvq111m~eGDk5p4UDeBtPlcRqNoPV6hpVeIARY1UxDzt9ALE-ahbCI58Y0srohDLgd~AyoTmY7TbhkEFYRWekve9zMPnNMmEm~YSMPM4076XCahCxdVBlOQFl6J9436k0p0PVoehUXOdiT4pXQcT27NhUfl4KXWe-qIvBzNGw2vR~pHoUVjqFOdcrmquhDMDVPPrdZkC9Ab0JM01snPSFbvTYSCbQhtNt0uuuqs8g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                width: 41.w,
                height: 41.w,
                borderRadius: 100.r,
              ),
            ),
            Expanded(
              child: Text(
                'Black Pepper',
                style: AppStyles.bodySmallBold,
              ),
            ),
            Text(
              'N2,500',
              style: AppStyles.captionBold.copyWith(color: AppColors.color1),
            ),
          ],
        ),
      );

  Widget _mealTag({required String meal}) => IntrinsicWidth(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: AppColors.innerBorder),
          ),
          child: Text(meal, style: AppStyles.caption),
        ),
      );

  _paynowConfirmDialog() => showGeneralDialog(
        context: context,
        pageBuilder: (_, __, ___) => Material(
          type: MaterialType.transparency,
          child: Align(
            child: Container(
              width: 335.w,
              height: 342.h,
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 14.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.close,
                      color: AppColors.dark5,
                      size: 24.w,
                    ),
                  ),
                  Text(
                    'Pay for the groceries?',
                    textAlign: TextAlign.center,
                    style: AppStyles.headline3ExtraBold,
                  ),
                  SizedBox(height: 8.h),
                  RichText(
                    text: TextSpan(
                        text:
                            'Are you sure to want to pay for the groceries now?\nBy doing that you that means you agree to be\ncharge for the',
                        style: AppStyles.caption,
                        children: [
                          TextSpan(
                            text: 'service charge of N3,000',
                            style: AppStyles.bodySmallBold,
                          ),
                          const TextSpan(
                            text:
                                ' for the shopping and the money for the groceries',
                          ),
                        ]),
                  ),
                  SizedBox(height: 39.h),
                  VhJobsButton(
                    onPressed: () {
                      GetIt.I.get<NavigationService>().to(
                          routeName:
                              AppointmentRoute.appointmentPaymentSuccessful);
                    },
                    text: 'Yes, Proceed to Pay',
                  ),
                  SizedBox(height: 16.h),
                  VhJobsButton(
                    type: ButtonType.outlined,
                    onPressed: () {
                      GetIt.I.get<NavigationService>().back();
                    },
                    text: 'Oops, No',
                    textColor: AppColors.dark5,
                    borderColor: AppColors.color5,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  _declineConfirmDialog() => showGeneralDialog(
        context: context,
        pageBuilder: (_, __, ___) => Material(
          type: MaterialType.transparency,
          child: Align(
            child: Container(
              width: 335.w,
              height: 222.h,
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 14.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.close,
                      color: AppColors.dark5,
                      size: 24.w,
                    ),
                  ),
                  Text(
                    'Decline payment?',
                    textAlign: TextAlign.center,
                    style: AppStyles.headline3ExtraBold,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Are you sure to want to decline the payment for\nthe groceries? By doing that you means you agree\nto make the groceries available before the chef\narrival',
                    style: AppStyles.caption,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VhJobsButton(
                        type: ButtonType.outlined,
                        onPressed: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        text: 'Yes, Decline',
                        textColor: AppColors.error,
                        borderColor: AppColors.color5,
                        width: 136.w,
                        height: 45.h,
                      ),
                      VhJobsButton(
                        onPressed: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        text: 'Oops, No',
                        width: 136.w,
                        height: 45.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
