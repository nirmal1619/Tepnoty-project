import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/Screens/Thired%20Row/login_opstion.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(LoginUsing());
                },
                child: Text("Next"),
              ))
        ],
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
                  top: 300,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      DoneContainer(),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Container(
                            child: Text(
                          textAlign: TextAlign.center,
                          "Registration Completed Successfully",
                          style: TextStyle(
                              letterSpacing: 1.03,
                              height: 1.43,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      GradientButton(
                          callBackFunction: () {}, buttonName: "Continue")
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class DoneContainer extends StatelessWidget {
  const DoneContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: secondaryColorValue)),
          child: Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: secondaryColorValue, shape: BoxShape.circle),
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white)),
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
