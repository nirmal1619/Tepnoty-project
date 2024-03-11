import 'package:flutter/material.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';

class PasswordUpdate extends StatelessWidget {
  const PasswordUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(height: 30),
            Container(
              height: 120,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.white, width: 2) // Deep Purple Color
                  ),
              child: Container(
                height: 90,
                width: 90,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent, // White Color
                ),
                child: Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurpleAccent, // White Color
                      border: Border.all(color: Colors.white, width: 2) //
                      ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                textAlign: TextAlign.center,
                "Password Updated Successfully",
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 0.3,
                  height: 1.43,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Password changed successfully. You can now login with your new password.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFFD9D9D9).withOpacity(0.8),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: GradientButton(
                callBackFunction: () {},
                buttonName: "Done",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
