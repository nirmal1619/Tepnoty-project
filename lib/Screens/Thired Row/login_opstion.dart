
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../custom container/stack_desgine.dart';
import 'finger_print_screen.dart';

class LoginUsing extends StatelessWidget {
  const LoginUsing({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: TextButton(
              onPressed: () {
                Get.to(Fingerprint());
              },
              child: Text("Next"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const StackDesign(),
          SizedBox(height: 50.h), // Use .h for height
          Text(
            "Login Using",
            style: TextStyle(
              fontSize: 40.sp, // Use .sp for font size
              fontFamily: "Lexend",
              height: 1.43, // Line height
              letterSpacing: 0.03, // 3% letter spacing
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 50.h), // Use .h for height
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 55.w), // Use .w for width
            child: Column(
              children: [
                CustomGradientButton(
                  callBackFunction: () {
                    // Add your logic for fingerprint login
                  },
                  buttonName: "Fingerprint",
                ),
                SizedBox(height: 30.h), // Use .h for height
                CustomGradientButton(
                  callBackFunction: () {
                    // Add your logic for Face ID login
                  },
                  buttonName: "Face ID",
                ),
                SizedBox(height: 30.h), // Use .h for height
                CustomGradientButton(
                  callBackFunction: () {
                    // Add your logic for password login
                  },
                  buttonName: "Password",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class CustomGradientButton extends StatelessWidget {
  final Function callBackFunction;
  final String buttonName;
  const CustomGradientButton(
      {super.key, required this.callBackFunction, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: 53.h,
          width: 270.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: const Color.fromRGBO(217, 217, 217, 1),
            ),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(139, 74, 228, 1),
              Color.fromRGBO(206, 126, 243, 1)
              // Color(0xFF8B4AE4),

              // Color(0xFF8B4AE4),
              // Color(0xFFCE7EF3),
            ]),
          ),
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(
                  fontSize: 20.sp,
                  height: 1.5.h,
                  letterSpacing: 0.3.w,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
