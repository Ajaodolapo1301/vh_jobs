// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:vh_jobs/shared/widgets/platform_widgets/platform_specific_widget.dart';
//
// import '../forms/input_text.dart';
//
// class PlatformDatePicker extends PlatformWidget<IOSDatePicker, DatePicker> {
//   final ValueChanged<String>? onChange;
//   final FormFieldValidator<String>? validator;
//   final FormFieldSetter<String>? onSaved;
//   final TextEditingController controller;
//   final String? headerText;
//   const PlatformDatePicker(
//       {Key? key,
//       this.onChange,
//       this.validator,
//       this.headerText,
//       this.onSaved,
//       required this.controller})
//       : super(key: key);
//
//   @override
//   DatePicker createAndroidWidget(BuildContext context) {
//     return DatePicker(
//       controller: controller,
//       onChange: onChange,
//       validator: validator,
//       onSaved: onSaved,
//       headerText: headerText,
//     );
//   }
//
//   @override
//   IOSDatePicker createIosWidget(BuildContext context) {
//     return IOSDatePicker(
//       onChange: onChange,
//       controller: controller,
//       validator: validator,
//       onSaved: onSaved,
//       headerText: headerText,
//     );
//   }
// }
//
// class DatePicker extends StatefulWidget {
//   final ValueChanged<String>? onChange;
//   final TextEditingController controller;
//   final FocusNode? focusNode;
//   final FormFieldValidator<String>? validator;
//   final FormFieldSetter<String>? onSaved;
//   final String? headerText;
//
//   const DatePicker(
//       {Key? key,
//       required this.onChange,
//       required this.controller,
//       this.focusNode,
//       this.validator,
//       this.onSaved,
//       this.headerText})
//       : super(key: key);
//
//   @override
//   _DatePickerState createState() => _DatePickerState();
// }
//
// class _DatePickerState extends State<DatePicker> {
//   var formatter = DateFormat("yyyy-MM-dd");
//   DateTime? _date;
//
//   @override
//   void initState() {
//     // date = widget.initialValue ?? formatter.format(DateTime.now());
//     super.initState();
//   }
//
//   Future<DateTime?> getDate(context) {
//     return showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1900),
//       lastDate: DateTime(3000),
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light(),
//           child: child!,
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         _date = await getDate(context);
//
//         if (_date != null) {
//           setState(() {
//             var date = formatter.format(_date!);
//             widget.controller.text = date;
//             widget.onChange!(_date.toString());
//           });
//         }
//       },
//       child: InputText(
//         headerText: widget.headerText,
//         controller: widget.controller,
//         labelText: "Date of birth",
//         textPlaceholder: "Date of birth",
//         keyboardType: TextInputType.multiline, enabled: false,
//         validator: widget.validator,
//         onSaved: widget.onSaved,
//         //initialValue: date,
//         suffixIcon: Icon(
//           Icons.calendar_today,
//           color: Colors.grey.withOpacity(0.5),
//         ),
//         // onChanged: (val) => checkFormValid(),
//       ),
//     );
//   }
// }
//
// class IOSDatePicker extends StatefulWidget {
//   final ValueChanged<String>? onChange;
//   final TextEditingController controller;
//   final FocusNode? focusNode;
//   final FormFieldValidator<String>? validator;
//   final FormFieldSetter<String>? onSaved;
//   final String? headerText;
//
//   const IOSDatePicker(
//       {required this.onChange,
//       required this.controller,
//       this.focusNode,
//       this.validator,
//       this.onSaved,
//       this.headerText});
//
//   @override
//   _IOSDatePickerState createState() => _IOSDatePickerState();
// }
//
// class _IOSDatePickerState extends State<IOSDatePicker> {
//   // DateTime? _chosenDateTime;
//   var formatter = DateFormat("yyyy-MM-dd");
//
//   // Show the modal that contains the CupertinoDatePicker
//   void _showDatePicker(ctx) {
//     // showCupertinoModalPopup is a built-in function of the cupertino library
//     showCupertinoModalPopup(
//         context: ctx,
//         builder: (_) => Container(
//               height: 500,
//               color: const Color.fromARGB(255, 255, 255, 255),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 400,
//                     child: CupertinoDatePicker(
//                       mode: CupertinoDatePickerMode.date,
//                       initialDateTime: DateTime.now(),
//                       onDateTimeChanged: (val) {
//                         setState(() {
//                           widget.controller.text = formatter.format(val);
//                           widget.onChange!(val.toString());
//                         });
//                       },
//                       minimumYear: 1900,
//                       maximumYear: 3000,
//                     ),
//                   ),
//
//                   // Close the modal
//                   CupertinoButton(
//                     child: const Text('OK'),
//                     onPressed: () => Navigator.of(ctx).pop(),
//                   )
//                 ],
//               ),
//             ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         _showDatePicker(context);
//       },
//       child: InputText(
//         headerText: widget.headerText,
//         controller: widget.controller,
//         labelText: "Date of birth",
//         textPlaceholder: "Date of birth",
//         keyboardType: TextInputType.multiline, enabled: false,
//         validator: widget.validator,
//         onSaved: widget.onSaved,
//         suffixIcon: Icon(
//           Icons.calendar_today,
//           color: Colors.grey.withOpacity(0.5),
//         ),
//         // onChanged: (val) => checkFormValid(),
//       ),
//     );
//   }
// }
