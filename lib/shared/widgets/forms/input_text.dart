// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/custom_styles.dart';

class InputText extends StatefulWidget {
  final String labelText;
  final String? headerText;
  final TextInputType keyboardType;
  final bool isPassword;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final FormFieldSetter<String>? onSaved;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final String? textPlaceholder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  String? initialValue;
  final bool enabled;
  final TextEditingController? controller;
  final int height;

  InputText({
    Key? key,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.onEditingComplete,
    this.onSaved,
    this.focusNode,
    this.headerText,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textPlaceholder,
    this.suffixIcon,
    this.prefixIcon,
    this.initialValue,
    this.enabled = true,
    this.controller,
    this.height = 1,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  late FocusNode _focusNode;
  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.headerText == null
            ? SizedBox()
            : RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: widget.headerText?.replaceAll("*", "") ?? "",
                    style: TextStyle(
                      color: AppColors.goMechoBlue50,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.headerText != null
                            ? widget.headerText!.contains("*")
                                ? '*'
                                : ""
                            : "",
                        style: TextStyle(color: Colors.red, fontSize: 12.sp),

                        // navigate to desired screen
                      ),
                    ]),
              ),
        // Text(widget.headerText ?? "", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.goMechoBlue50),),
        SizedBox(
          height: 8.h,
        ),
        TextFormField(
          maxLines: widget.height,
          // key: Key(DateTime.now().toString()),
          style: textFieldTextStyle(context),
          initialValue: widget.initialValue,
          controller: widget.controller,
          enabled: widget.enabled,
          cursorColor: AppColors.vhDarkBlue,
          focusNode: _focusNode,
          decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              prefixIconConstraints: BoxConstraints(maxHeight: 40.w),
              // labelText: widget.labelText,
              // labelStyle: labelStyle(context),
              hintText: widget.textPlaceholder ?? widget.labelText,
              hintStyle: textFieldPlaceholderTextStyle(context),
              isDense: true,
              // filled: true,
              // fillColor: AppColors.textColorSecondaryLight,
              contentPadding: EdgeInsets.only(
                  left: 20.w, right: 15.w, top: 10.h, bottom: 10.h),
              focusedBorder: AppStyles.focusedBorder,
              disabledBorder: AppStyles.focusBorder,
              enabledBorder: AppStyles.focusBorder,
              errorBorder: AppStyles.focusedBorder,
              focusedErrorBorder: AppStyles.focusedBorder,
              errorStyle: errorTextStyle(context)),
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType,
          obscureText: widget.isPassword,
          onSaved: widget.onSaved,
          onEditingComplete: () {
            setState(() {
              FocusScope.of(context).unfocus();
            });
            if (widget.onEditingComplete != null) widget.onEditingComplete!();
          },
          onChanged: widget.onChanged,
          validator: widget.validator,
          onTap: () {
            setState(() {
              FocusScope.of(context).requestFocus(_focusNode);
            });
            if (widget.onTap != null) widget.onTap!();
          },
        ),
      ],
    );
  }

  TextStyle? labelStyle(context) {
    return _focusNode.hasFocus
        ? labelTextFieldTextStyle(context)
        : textFieldPlaceholderTextStyle(context);
  }

  labelTextFieldTextStyle(context) => TextStyle(
      fontSize: 14.sp,
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w600,
      height: 1.4);

  textFieldPlaceholderTextStyle(context) => TextStyle(
      fontSize: 14.sp,
      color: AppColors.goMechoBlue50,
      fontWeight: FontWeight.w400,
      height: 1.4);

  errorTextStyle(context) => TextStyle(
      fontSize: 10.sp,
      color: Theme.of(context).errorColor,
      fontWeight: FontWeight.w500,
      height: 1.4);

  textFieldTextStyle(context) => TextStyle(
      fontSize: 14.sp,
      color: AppColors.vhDarkBlue,
      fontWeight: FontWeight.w600,
      height: 1.4);
}
