// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../utils/colors.dart';
// import '../../utils/custom_styles.dart';
//
// class InputDropDown extends StatelessWidget {
//   final ValueChanged<String?>? onChanged;
//   final String? selectedValue;
//   final List<String> items;
//   final FocusNode? focusNode;
//   final String labelText;
//   final Widget? prefixIcon;
//   final String? textPlaceholder;
//   final FormFieldValidator<String>? validator;
//   final FormFieldSetter<String>? onSaved;
//   final String? headerText;
//   const InputDropDown({
//     Key? key,
//     this.onChanged,
//     this.selectedValue,
//     required this.items,
//     required this.labelText,
//     this.textPlaceholder,
//     this.focusNode,
//     this.validator,
//     this.headerText,
//     this.onSaved,
//     this.prefixIcon,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         RichText(
//           textAlign: TextAlign.start,
//           text: TextSpan(
//               text: headerText?.replaceAll("*", "") ?? "" ,
//               style: TextStyle(
//                   color: AppColors.goMechoBlue50,
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w400,
//                   letterSpacing: 0.6),
//               children: <TextSpan>[
//                 TextSpan(
//                   text: headerText != null ?  headerText!.contains("*")? '*' : "" : "",
//                   style:
//                   TextStyle(color: Colors.red, fontSize: 14.sp),
//
//
//                   // navigate to desired screen
//                 ),
//               ]),
//         ),
//         SizedBox(height: 8.h,),
//         DropdownButtonFormField(
//           value: selectedValue,
//           items: items.map((value) {
//             return DropdownMenuItem<String>(value: value, child: Text(value));
//           }).toList(),
//           onChanged: onChanged,
//           style: textFieldTextStyle(context),
//           decoration: InputDecoration(
//               labelText: labelText,
//               prefixIcon: prefixIcon,
//               prefixIconConstraints: BoxConstraints(maxHeight: 40.w),
//               labelStyle: labelStyle(context),
//               hintText: textPlaceholder ?? labelText,
//               hintStyle: textFieldPlaceholderTextStyle(context),
//               isDense: true,
//               filled: false,
//               // fillColor: AppColors.textColorSecondaryLight,
//               // contentPadding: EdgeInsets.all(height * 0.015),
//               focusedBorder: AppStyles.focusedBorder,
//               disabledBorder: AppStyles.focusBorder,
//               enabledBorder: AppStyles.focusBorder,
//               errorBorder: AppStyles.focusedBorder,
//               focusedErrorBorder: AppStyles.focusedBorder,
//               errorStyle: errorTextStyle(context)),
//           validator: validator,
//           onSaved: onSaved,
//         ),
//       ],
//     );
//   }
//
//   TextStyle? labelStyle(context) {
//     if (focusNode != null) {
//       return focusNode!.hasFocus
//           ? labelTextFieldTextStyle(context)
//           : textFieldPlaceholderTextStyle(context);
//     }
//     return textFieldPlaceholderTextStyle(context);
//   }
//
//   labelTextFieldTextStyle(context) => TextStyle(
//       fontSize: 14.sp,
//       color: Theme.of(context).primaryColor,
//       fontWeight: FontWeight.w600,
//       height: 1.4);
//
//   textFieldTextStyle(context) => TextStyle(
//       fontSize: 14.sp,
//       color: AppColors.goMechoBlue[100],
//       fontWeight: FontWeight.w600,
//       height: 1.4);
//
//   textFieldPlaceholderTextStyle(context) => TextStyle(
//       fontSize: 14.sp,
//       color: AppColors.goMechoBlue[30],
//       fontWeight: FontWeight.w400,
//       height: 1.4);
//
//   errorTextStyle(context) => TextStyle(
//       fontSize: 14.sp,
//       color: Theme.of(context).errorColor,
//       fontWeight: FontWeight.w500,
//       height: 1.4);
// }
