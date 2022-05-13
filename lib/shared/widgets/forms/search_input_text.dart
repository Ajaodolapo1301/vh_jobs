// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../utils/colors.dart';
// import '../../utils/custom_styles.dart';
//
// class SearchInputText extends StatefulWidget {
//   final TextInputType keyboardType;
//   final FormFieldValidator<String>? validator;
//   final ValueChanged<String>? onChanged;
//   final VoidCallback? onEditingComplete;
//   final FormFieldSetter<String>? onSaved;
//   final TextEditingController? controller;
//   final VoidCallback? onTap;
//   final TextInputAction? textInputAction;
//   final String textPlaceholder;
//   final Widget? prefixIcon;
//   final bool autofocus;
//   final int fillColor;
//
//   SearchInputText({
//     this.keyboardType = TextInputType.text,
//     this.validator,
//     this.onChanged,
//     this.autofocus = true,
//     this.onEditingComplete,
//     this.controller,
//     this.onSaved,
//     this.onTap,
//     this.textInputAction = TextInputAction.next,
//     required this.textPlaceholder,
//     this.prefixIcon,
//     this.fillColor = 0xFFF9FAFC,
//   });
//
//   @override
//   _SearchInputTextState createState() => _SearchInputTextState();
// }
//
// class _SearchInputTextState extends State<SearchInputText> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedPadding(
//         duration: Duration(milliseconds: 600),
//         padding: EdgeInsets.zero,
//         child: TextFormField(
//           controller: widget.controller,
//           readOnly: widget.onTap != null, //false
//           autofocus: widget.autofocus,
//           style: textFieldTextStyle(context),
//           decoration: InputDecoration(
//               // prefixIcon: Padding(
//               //   // padding: EdgeInsets.symmetric(horizontal: 8.w),
//               //   child: widget.prefixIcon,
//               // ),
//               prefixIconConstraints:
//                   BoxConstraints(maxHeight: 20.w, maxWidth: 35.w),
//               hintText: widget.textPlaceholder,
//               hintStyle: textFieldPlaceholderTextStyle(context),
//               isDense: true,
//               // filled: true,
//               // contentPadding: EdgeInsets.all(18),
//               fillColor: Color(widget.fillColor),
//               focusedBorder: AppStyles.focusedTransparentBorder,
//               disabledBorder: AppStyles.focusedTransparentBorder,
//               enabledBorder: AppStyles.focusedTransparentBorder,
//               errorBorder: AppStyles.focusedTransparentBorder,
//               focusedErrorBorder: AppStyles.focusedTransparentBorder,
//               errorStyle: errorTextStyle(context)),
//           textInputAction: this.widget.textInputAction,
//           keyboardType: widget.keyboardType,
//           onSaved: widget.onSaved,
//           onEditingComplete: () {
//             setState(() {
//               FocusScope.of(context).unfocus();
//             });
//             if (widget.onEditingComplete != null) widget.onEditingComplete!();
//           },
//           onChanged: widget.onChanged,
//           validator: widget.validator,
//           onTap: () {
//             if (widget.onTap != null) widget.onTap!();
//           },
//         ));
//   }
//
//   textFieldPlaceholderTextStyle(context) => TextStyle(
//         fontSize: 14.sp,
//         color: AppColors.goMechoGrey3,
//         fontWeight: FontWeight.w400,
//         // height: 1.4
//       );
//
//   errorTextStyle(context) => TextStyle(
//         fontSize: 14.sp,
//         color: Theme.of(context).errorColor,
//         fontWeight: FontWeight.w500,
//         // height: 1.4
//       );
//
//   textFieldTextStyle(context) => TextStyle(
//         fontFamily: 'Gilmer',
//         fontSize: 14.sp,
//         color: Theme.of(context).textTheme.bodyText1!.color,
//         fontWeight: FontWeight.w500,
//         // height: 1.4
//       );
// }
