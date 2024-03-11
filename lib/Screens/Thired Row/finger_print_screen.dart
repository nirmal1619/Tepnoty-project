import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Thired%20Row/face_authentication.dart';

class Fingerprint extends StatelessWidget {
  const Fingerprint({super.key});

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
                  Get.to(FaceAuthentication());
                },
                child: Text("Next"),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const StackDesign(),
          const SizedBox(height: 20),
          const Icon(
            Icons.fingerprint,
            size: 112,
            color: Colors.white,
          ),
          const SizedBox(height: 60),
          const Text(
            "Login in with Touch Screen",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              textAlign: TextAlign.center,
              "Place your finger on the home button to login",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: TextButton(
              onPressed: () {
                // Add your logic for login with password
              },
              child: const Text(
                "Login with Password",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
