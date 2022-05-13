// class Validator {
//   static bool showIcon = false;
//   static bool showNameIcon = false;
//   static bool showEmailIcon = false;
//   static bool showPasswordIcon = false;
//   static bool showConfirmIcon = false;
//
//   static String? validateMobile(value) {
//     String patttern = r'(^(?:[+0]9)?[0-9]{10,11}$)';
//     // String patttern = r'(^(?:[+0]9)?[0-9]{11}$)'; // validated
//     RegExp regExp = RegExp(patttern);
//     if (value!.length == 0) {
//       showIcon = false;
//       return S.current.enterPhoneNumber;
//     } else if (!regExp.hasMatch(value)) {
//       showIcon = false;
//       return S.current.enterValidPhoneNumber;
//     }
//     showIcon = true;
//     return null;
//   }
//
//   static String? validatePassword(value) {
//     var pattern = r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
//     RegExp regex = RegExp(pattern);
//
//     if (value.isEmpty) {
//       showPasswordIcon = false;
//       return S.current.passwordRequired;
//     } else if (!value.contains(RegExp(r'[a-z]'))) {
//       showPasswordIcon = false;
//       return S.current.lowerCaseRequired;
//     } else if (!value.contains(RegExp(r'[0-8]'))) {
//       showPasswordIcon = false;
//       return S.current.numberRequired;
//     } else if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>\~]'))) {
//       showPasswordIcon = false;
//       return S.current.specialCharacterRequired;
//     } else if (!regex.hasMatch(value)) {
//       showPasswordIcon = false;
//       return S.current.passwordRequirement;
//     }
//     showPasswordIcon = true;
//     return null;
//   }
//
//   static String? validateConfirmPassword(value, compareWith) {
//     var pattern = r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
//     RegExp regex = new RegExp(pattern);
//     print(value);
//     if (value.isEmpty) {
//       showPasswordIcon = false;
//       return S.current.passwordRequired;
//     } else if (!value.contains(RegExp(r'[a-z]'))) {
//       showPasswordIcon = false;
//       return S.current.lowerCaseRequired;
//     } else if (!value.contains(RegExp(r'[0-8]'))) {
//       showPasswordIcon = false;
//       return S.current.numberRequired;
//     } else if (!regex.hasMatch(value)) {
//       showPasswordIcon = false;
//       return S.current.passwordRequirement;
//     }
//     showPasswordIcon = true;
//
//     if (value != compareWith) {
//       return S.current.passwordsDoNotMatch;
//     }
//     return null;
//   }
//
//   static String? ConfirmPasswordValidator(String? password, String? value) {
//     if (password == null) return '';
//     if (value == null) return 'confirm password is required';
//     value = value.trim();
//
//     String? validate = validatePassword(value);
//     if (validate != null) return validate;
//     if (password == value) return null;
//     return 'Passwords do not match';
//   }
// }
