import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/eleventh%20Row/varify_code_screen.dart';

import '../../constant/colors_value.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => VerificationCode());
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const StackDesign(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Enter OTP",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Lexend",
                color: Colors.white,
                height: 1.43,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "We sent OTP code to verify your number",
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
                "Didn't Receive OTP",
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
            GradientButton(
              callBackFunction: () {
                buildShowModalBottomSheet(context);
              },
              buttonName: "Verify",
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: backgroundColorValue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 274,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const rightCheckContainer(),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OTP Verified ",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Successfully",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GradientButton(
                callBackFunction: () {
                  Navigator.pop(context);
                },
                buttonName: "Done",
              ),
            ],
          ),
        );
      },
    );
  }
}

class rightCheckContainer extends StatelessWidget {
  const rightCheckContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(color: Colors.white, width: 2) //
          // Deep Purple Color
          ),
      child: Container(
        height: 80,
        width: 80,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.deepPurpleAccent, // White Color
        ),
        child: Container(
          height: 40,
          width: 40,
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
