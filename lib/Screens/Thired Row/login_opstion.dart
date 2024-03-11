import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Thired%20Row/finger_print_screen.dart';
import 'package:untitled2/Screens/Second%20Row/registration_succesful.dart';

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
        actions: [
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(Fingerprint());
                },
                child: Text("Next"),
              ))
        ],
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
                    // Add your logic for fingerprint login
                  },
                  buttonName: "Fingerprint",
                ),
                const SizedBox(height: 30),
                GradientButton(
                  callBackFunction: () {
                    // Add your logic for Face ID login
                  },
                  buttonName: "Face ID",
                ),
                const SizedBox(height: 30),
                GradientButton(
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
