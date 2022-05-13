// import 'package:flutter/material.dart';
// import 'package:vh/screens/auth_page.dart';
//
// class SplashPage3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         alignment: AlignmentDirectional.topStart,
//         fit: StackFit.loose,
//         children: [
//           Image.asset(
//             'images/pix1.png',
//           ),
//           SafeArea(
//             child: Container(
//               margin: EdgeInsets.all(15.0),
//               padding: EdgeInsets.only(top: 50),
//               width: double.infinity,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset(
//                     'images/logo.png',
//                     color: Colors.white,
//                     width: 100,
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Build and take your business to the next level ',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       decoration: TextDecoration.none,
//                       fontSize: 13.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Spacer(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Skip Now',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w300,
//                           decoration: TextDecoration.none,
//                           fontSize: 13.0,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => SignUpPage()));
//                         },
//                         child: Image.asset(
//                           'images/icon.png',
//                           width: 65.0,
//                         ),
//                       )
//
//                       // CircleAvatar(
//                       //   backgroundColor: Color(0XFF1C71B7),
//
//                       // )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
