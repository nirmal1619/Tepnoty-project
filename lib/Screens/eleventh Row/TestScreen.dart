// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class TestScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade300,
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             flexibleSpace: FlexibleSpaceBar(
//               background: ClipPath(
//                 clipper: MyClipper(),
//                 child: Container(
//                   height: 300,
//                   decoration: BoxDecoration(color: Colors.deepPurple.shade200),
//                 ),
//               ),
//             ),
//             expandedHeight: 300,
//             floating: false,
//             pinned: true,
//           ),
//          SliverToBoxAdapter(
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius:
//                   BorderRadius.vertical(top: Radius.circular(30.r)),
//               color: Colors.black.withOpacity(1),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.shade800.withOpacity(0.5),
//                   spreadRadius: 3.r,
//                   blurRadius: 5.r,
//                   offset: Offset(0.h, -3.h),
//                 ),
//                 BoxShadow(
//                   color: Colors.grey.shade700.withOpacity(0.5),
//                   spreadRadius: 3.r,
//                   blurRadius: 5.r,
//                   offset: Offset(0.h, 3.h),
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24.w)
//                   .copyWith(top: 10.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Create Account",
//                     style: TextStyle(
//                       fontSize: 24.sp,
//                       height: 1.43,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                   _buildTextField("Name", nameController),
//                   SizedBox(height: 10.h),
//                   _buildTextField("Email", emailController),
//                   SizedBox(height: 10.h),
//                   _buildTextField("Phone Number", phoneNumberController),
//                   SizedBox(height: 10.h),
//                   _buildTextField("Password", passwordController),
//                   SizedBox(height: 10.h),
//                   _buildTextField(
//                       "Confirm Password", confirmPasswordController),
//                   SizedBox(height: 15.h),
//                   Row(
//                     children: [
//                       SizedBox(
//                         height: 5.h,
//                         child: Checkbox(
//                           activeColor: Colors.white,
//                           checkColor: Colors.black,
//                           fillColor: MaterialStateColor.resolveWith(
//                             (states) => Colors.white,
//                           ),
//                           value: termsAndConditionsChecked,
//                           onChanged: (value) {
//                             setState(() {
//                               termsAndConditionsChecked = value!;
//                             });
//                           },
//                         ),
//                       ),
//                       Text(
//                         "Agree to terms and conditions",
//                         style:
//                             TextStyle(fontSize: 14.sp, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 5.h),
//                   Row(
//                     children: [
//                       SizedBox(
//                         height: 5.h,
//                         child: Checkbox(
//                           activeColor: Colors.white,
//                           checkColor: Colors.black,
//                           fillColor: MaterialStateColor.resolveWith(
//                             (states) => Colors.white,
//                           ),
//                           value: privacyPolicyChecked,
//                           onChanged: (value) {
//                             setState(() {
//                               privacyPolicyChecked = value!;
//                             });
//                           },
//                         ),
//                       ),
//                       Text(
//                         "Agree to privacy and policies",
//                         style: TextStyle(
//                             fontSize: 14.spMin, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20.h),
//                   GradientButton(
//                     callBackFunction: () {
//                       if (_validateFields() &&
//                           _validatePasswords() &&
//                           termsAndConditionsChecked &&
//                           privacyPolicyChecked) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => RegistrationScreen(),
//                           ),
//                         );
//                       } else {
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               title: Text("Validation Error"),
//                               content: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                 children: [
//                                   if (!_validateFields())
//                                     Text("All fields are required."),
//                                   if (!_validatePasswords())
//                                     Text(
//                                         "Passwords do not match or are not 4-digit pin."),
//                                   if (!termsAndConditionsChecked)
//                                     Text(
//                                         "Please agree to terms and conditions."),
//                                   if (!privacyPolicyChecked)
//                                     Text(
//                                         "Please agree to privacy policies."),
//                                 ],
//                               ),
//                               actions: [
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: Text("OK"),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       }
//                     },
//                     buttonName: "Register",
//                   ),
//                   SizedBox(height: 3.h),
//                   Center(child: Text("or")),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         child: Icon(
//                           Icons.sms,
//                           color: Colors.red,
//                         ),
//                         height: 48.h,
//                         width: 48.w,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(width: 20.w),
//                       Container(
//                         height: 48.h,
//                         width: 48.w,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.white,
//                         ),
//                         child: Icon(
//                           Icons.call,
//                           color: Colors.black,
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//          )
//         ],
//       ),
//     );
//   }
// }

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, size.height);
//     path.quadraticBezierTo(0, size.height - 70, 50, size.height - 70);
//     path.lineTo(size.width - 50, size.height - 70);
//     path.quadraticBezierTo(
//         size.width, size.height - 70, size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
