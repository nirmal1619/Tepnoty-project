import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import screen_util package
import 'package:untitled2/Screens/Thired%20Row/login_opstion.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';

class RegistrationScreen extends StatelessWidget {
  //  RegistrationScreen({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              StackDesign2(),
              Positioned(
                top: 330.h, // Use .h extension for height
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    DoneContainer(),
                    SizedBox(
                      height: 60.h, // Use .h extension for height
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          "Registration Completed Successfully",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 1.03,
                            height: 1.43,
                            fontSize: 24.sp, // Use .sp extension for font size
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 108.h, // Use .h extension for height
                    ),
                    GradientButton(
                      callBackFunction: () {
                        Get.to(LoginUsing());
                      },
                      buttonName: "Continue",
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DoneContainer extends StatelessWidget {
  // const DoneContainer({Key key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100.h, // Use .h extension for height
          width: 100.w, // Use .w extension for width
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
                width: 2.r,
                color: secondaryColorValue), // Use .r extension for radius
          ),
          child: Center(
            child: Container(
              height: 80.h, // Use .h extension for height
              width: 80.w, // Use .w extension for width
              decoration: BoxDecoration(
                color: secondaryColorValue,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 40.h, // Use .h extension for height
                  width: 40.w, // Use .w extension for width
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 2.r,
                        color: Colors.white), // Use .r extension for radius
                  ),
                  child: Icon(Icons.check),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
