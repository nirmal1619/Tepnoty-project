import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Thired%20Row/login_using_pin.dart';

class FaceAuthentication extends StatelessWidget {
  const FaceAuthentication({Key? key});

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const StackDesign(),
          SizedBox(height: 20.h), // Use .h extension for height
          Container(
            height: 233.h, // Use .h extension for height
            width: 258.w, // Use .w extension for width
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          ),
          SizedBox(height: 27.h), // Use .h extension for height
          _GradientButton(callBackFunction: () {}, buttonName: "Click"),
          SizedBox(height: 37.h), // Use .h extension for height
          Text(
            "Login with Face ID",
            style: TextStyle(
              fontSize: 24.sp, // Use .sp extension for font size
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.h), // Use .h extension for height
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 80.w), // Use .w extension for width
            child: Text(
              "Place your face in front of the camera to login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp, // Use .sp extension for font size
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(LogInUsingPin());
              },
              child: Text(
                "Login with Password",
                style: TextStyle(
                  fontSize: 16.sp, // Use .sp extension for font size
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

class _GradientButton extends StatelessWidget {
  final Function callBackFunction;
  final String buttonName;
  const _GradientButton(
      {Key? key, required this.callBackFunction, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 0.w), // Use .w extension for width
        child: Container(
          height: 35.h, // Use .h extension for height
          width: 131.w, // Use .w extension for width
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(12.r), // Use .r extension for radius
            border: Border.all(
              color: const Color.fromRGBO(217, 217, 217, 1),
            ),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(139, 74, 228, 1),
              Color.fromRGBO(206, 126, 243, 1)
            ]),
          ),
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(
                  fontSize: 16.sp, // Use .sp extension for font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
