import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/Screens/Eighth%20Row/reel_gallery.dart';

import '../../custom container/s_curved_container.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ReelsGallery());
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
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Verification Code",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Lexend",
                color: Colors.white,
                height: 1.43,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Enter your verification code to verify your account",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFFD9D9D9).withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerificationCodeTextField(),
                SizedBox(width: 48),
                VerificationCodeTextField(),
                SizedBox(width: 48),
                VerificationCodeTextField(),
                SizedBox(width: 48),
                VerificationCodeTextField(),
              ],
            ),
            const SizedBox(height: 28),
            TextButton(
              onPressed: () {},
              child: Text(
                "Didn't Receive OPT",
                style: TextStyle(
                  fontSize: 18,
                  color: const Color(0xFFD9D9D9).withOpacity(0.9),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Resend Code",
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFFD9D9D9)
                      .withOpacity(0.9), // Change color to d9d9d9
                ),
              ),
            ),
            const SizedBox(height: 20),
            GradientButton(callBackFunction: () {}, buttonName: "Verify")
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
