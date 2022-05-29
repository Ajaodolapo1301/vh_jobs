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

class MealOptionsScreen extends StatefulWidget {
  const MealOptionsScreen({Key? key}) : super(key: key);

  @override
  State<MealOptionsScreen> createState() => _MealOptionsScreenState();
}

class _MealOptionsScreenState extends State<MealOptionsScreen> {
  bool _packageDetailsExpanded = false;

  final List<String> meals = [
    'Jollof Rice',
    'Egusi soup1',
    'Egusi soup2',
    'Egusi soup3',
    'Egusi soup4',
    'Egusi soup5',
    'Egusi soup6',
    'Egusi soup7',
    'Egusi soup8',
  ];
  List<String> options = [
    'Help me shop for the groceries',
    'I will shop for the groceries'
  ];

  String? selectedOption;

  List<String> selectedMeals = [];
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
        titleText: 'Meal options',
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select meals',
                  style: AppStyles.bodyLargeBold,
                ),
                Text(
                  '${selectedMeals.length}/10',
                  style: AppStyles.bodySmallBold,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Wrap(
              spacing: 10.w,
              runSpacing: 8.h,
              children: meals
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        selectedMeals.contains(e)
                            ? selectedMeals.remove(e)
                            : selectedMeals.add(e);
                        setState(() {});
                      },
                      child: _mealTag(
                        meal: e,
                        isSelected: selectedMeals.contains(e),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 31.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: options
                  .map((e) => Container(
                        width: 153.w,
                        height: 62.h,
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: AppColors.innerBorder),
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  e,
                                  style: AppStyles.bodySmall,
                                ),
                              ),
                              Radio<String>(
                                  value: e,
                                  groupValue: selectedOption,
                                  onChanged: (val) {
                                    selectedOption = val;
                                    setState(() {});
                                  })
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: 8.h),
            Container(
              width: 335.w,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.color7,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Text(
                selectedOption == options[0]
                    ? 'The quotation for the ingridient is going be sent We\ncharge a service fee of N3,000 for shopping for\ngroceries.'
                    : 'Kindly note that groceries need to be made available\nbefore the arrival of the chef.',
                style: AppStyles.caption.copyWith(color: AppColors.color1),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Select groceries that need\nto be purchased',
              style: AppStyles.bodyLargeBold,
            ),
            SizedBox(height: 8.h),
            ...selectedMeals.map((e) => _ingredientTile(e)).toList()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: VhJobsButton(
          text: 'Continue',
          onPressed: () {
            GetIt.I
                .get<NavigationService>()
                .to(routeName: AppointmentRoute.appointmentScheduleAppointment);
          },
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
                child: Text('Select all', style: AppStyles.button),
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
            Checkbox(
              value: false,
              checkColor: AppColors.color1,
              side: const BorderSide(color: AppColors.color1),
              onChanged: (val) {},
            ),
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
              '25g',
              style: AppStyles.caption,
            )
          ],
        ),
      );

  Widget _mealTag({required String meal, required bool isSelected}) =>
      IntrinsicWidth(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: isSelected ? AppColors.color1 : AppColors.color6,
          ),
          child: Text(
            meal,
            style: AppStyles.button.copyWith(
              color: isSelected ? AppColors.color6 : AppColors.dark5,
            ),
          ),
        ),
      );
}
