import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/Screens/Thired%20Row/face_authentication.dart';
import 'package:untitled2/Screens/Thired%20Row/login_using_pin.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Thired%20Row/finger_print_screen.dart';

class LoginUsing extends StatelessWidget {
  const LoginUsing({super.key});

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
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          const StackDesign(),
          const SizedBox(height: 50),
          const Text(
            "Login Using",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "Lexend",
              height: 1.43,
              letterSpacing: 0.03, // 3% letter spacing
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Column(
              children: [
                GradientButton(
                  callBackFunction: () {
                    Get.to(() => Fingerprint());
                  },
                  buttonName: "Fingerprint",
                ),
                const SizedBox(height: 30),
                GradientButton(
                  callBackFunction: () {
                    Get.to(() => FaceAuthentication());
                  },
                  buttonName: "Face ID",
                ),
                const SizedBox(height: 30),
                GradientButton(
                  callBackFunction: () {
                    Get.to(() => LogInUsingPin());
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
