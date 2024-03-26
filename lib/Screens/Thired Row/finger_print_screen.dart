import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Thired%20Row/face_authentication.dart';

class Fingerprint extends StatelessWidget {
  const Fingerprint({Key? key});

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
                Get.to(FaceAuthentication());
              },
              child: Text("Next"),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const StackDesign(),
          SizedBox(height: 106.h), // Use .h for height
          Icon(
            Icons.fingerprint,
            size: 112.w, // Use .w for width
            color: Colors.white,
          ),
          SizedBox(height: 65.h), // Use .h for height
          Text(
            "Login in with Touch Screen",
            style: TextStyle(
              fontSize: 24.sp, // Use .sp for font size
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.h), // Use .h for height
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w), // Use .w for width
            child: Text(
              "Place your finger on the home button to login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp, // Use .sp for font size
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: TextButton(
              onPressed: () {
                // Add your logic for login with password
              },
              child: Text(
                "Login with Password",
                style: TextStyle(
                  fontSize: 16.sp, // Use .sp for font size
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
