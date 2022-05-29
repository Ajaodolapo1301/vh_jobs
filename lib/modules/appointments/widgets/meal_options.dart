import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';

class MealOptionsScreen extends StatefulWidget {
  const MealOptionsScreen({Key? key}) : super(key: key);

  @override
  State<MealOptionsScreen> createState() => _MealOptionsScreenState();
}

class _MealOptionsScreenState extends State<MealOptionsScreen> {
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
                'The quotation for the ingridient is going be sent We\ncharge a service fee of N3,000 for shopping for\ngroceries.',
                style: AppStyles.caption.copyWith(color: AppColors.color1),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Select groceries that need\nto be purchased',
              style: AppStyles.bodyLargeBold,
            ),
            SizedBox(height: 8.h),
            
          ],
        ),
      ),
    );
  }

  Widget _mealTag({required String meal, required bool isSelected}) =>
      IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.all(10),
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
