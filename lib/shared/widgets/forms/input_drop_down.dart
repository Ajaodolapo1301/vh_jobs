import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class InputDropDown<T> extends FormField<dynamic> {
  final String hintText;
  final List<T> options;
  final T? value;
  Key? key;
  final String? hint;
  final String? label;
  final String? header;
  final double? fontSize;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final String Function(T)? getLabel;
  final void Function(T)? onChanged;
  final Widget? suffix;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? prefix;
  bool isloading;
  InputDropDown(
      {FormFieldSetter<dynamic>? onSaved,
      this.key,
      FormFieldValidator<dynamic>? validator,
      bool a = false,
      this.hintText = 'Please select an Option',
      this.options = const [],
      this.getLabel,
      this.hintStyle,
      this.header,
      this.labelStyle,
      this.fontSize,
      this.value,
      this.onChanged,
      this.hint,
      this.label,
      this.isloading = false,
      this.suffix,
      this.suffixIcon,
      this.prefixIcon,
      this.prefix})
      : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            builder: (FormFieldState<dynamic> state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(header ?? "",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(height: 5.h),
                  InputDecorator(
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: AppColors.vhBlue),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        labelText: label,
                        //        hintText: label,

                        suffix: suffix,
                        labelStyle: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff999999),
                          fontWeight: FontWeight.w300,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff999999),
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: prefixIcon != null
                            ? Icon(
                                prefixIcon,
                                size: 20,
                                //          color: Colors.black.withOpacity(0.5),
                              )
                            : null,
                        prefix: prefix != null ? Image.asset(prefix) : null),
                    isEmpty: value == null || value == '',
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<T>(
                        icon: isloading
                            ? CupertinoActivityIndicator()
                            : Icon(Icons.keyboard_arrow_down_sharp),
                        value: value,
                        isDense: true,
                        onChanged: (dynamic newValue) {
                          state.didChange(newValue);
                          onChanged!(newValue);
                        },
                        // onChanged: onChanged,
                        items: options.map((T value) {
                          return DropdownMenuItem<T>(
                            value: value,
                            child: Container(
                                // width: MediaQuery.of(context).size.width * 0.3,
                                child: Text(
                              getLabel!(value),
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14.sp),
                            )),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: state.hasError ? 5.0 : 0.0),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      state.hasError ? state.errorText! : '',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: state.hasError ? 12.0 : 0.0),
                    ),
                  ),
                ],
              );
            });
}
