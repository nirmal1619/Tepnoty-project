import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/enter_OTP_screen.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => OTPScreen());
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Stack(
              children: [
                SCurvedConatiner(
                    containerHeight: 301, containerWidth: 428, useChild: false),
                BubbleContainer(),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 24, bottom: 20),
              child: Text(
                textAlign: TextAlign.center,
                "Set Your New Password",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Lexend",
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xFFD9D9D9).withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your new password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.visibility_off, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                        fontSize: 18, fontFamily: "Lexend", color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirm your password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.visibility_off, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GradientButton(
                  callBackFunction: () {}, buttonName: "Confirm"),
            )
          ],
        ),
      ),
    );
  }
}

class VerificationCodeTextField extends StatelessWidget {
  const VerificationCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 50,
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.grey)), // Add bottom border only
        // border: Border.all(
        //
        // )
      ),
      child: const TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          counterText: "", // Hide the counter text
          border: InputBorder.none, // Remove border
        ),
      ),
    );
  }
}
