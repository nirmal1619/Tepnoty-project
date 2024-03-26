import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/Screens/Thired%20Row/login_opstion.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';

import '../../custom container/done_container.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Get.to(LoginUsing());
            },
            child: Text("Next"),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              StackDesign2(),
              Positioned(
                top: 301.h, // Use .h for height
                right: 0,
                left: 0,
                child: Column(
                  children: [
                     SizedBox(height: 27,),
                    DoneContainer(),
                    SizedBox(
                      height: 54.h, // Use .h for height
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          "Registration Completed Successfully",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 1.03.w,
                            height: 1.43.h,
                            fontSize: 24.sp, // Use .sp for font size
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 106.h, // Use .h for height
                    ),
                    GradientButton(
                      callBackFunction: () {},
                      buttonName: "Continue",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

