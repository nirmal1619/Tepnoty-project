import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/Screens/Second%20Row/registration_succesful.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(RegistrationScreen());
                },
                child: Text("Next"),
              ))
        ],
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF391E5D), Color(0xFF8B4AE4)],
                ),
              ),
              child: BubbleContainer(),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              child: Container(
                height: Get.height,
                // Adjust height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: Colors.black.withOpacity(1), // Black with full opacity
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800
                          .withOpacity(0.5), // Grey with 50% opacity
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, -3), // Changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.shade700
                          .withOpacity(0.5), // Grey with 50% opacity
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // Changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 24,
                            height: 1.43,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Name",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFD9D9D9)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0XFFD9D9D9))),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your full name",
                            hintStyle: TextStyle(
                                color: Color(0xFFD9D9D9), fontSize: 14),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Email",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFD9D9D9)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0XFFD9D9D9))),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: TextStyle(
                                color: Color(0xFFD9D9D9), fontSize: 14),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Phone Number",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFD9D9D9)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0XFFD9D9D9))),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your phone number",
                            hintStyle: TextStyle(
                                color: Color(0xFFD9D9D9), fontSize: 14),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(
                            height: 5,
                            child: Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                                value: true,
                                onChanged: null),
                          ),
                          Text("Agree to terms and conditions",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ],
                      ),
                      SizedBox(
                          height: 5), // Adjusted gap between the two checkboxes
                      Row(
                        children: [
                          SizedBox(
                            height: 5,
                            child: Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                                value: true,
                                onChanged: null),
                          ),
                          Text("Agree to privacy and policies",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 20),
                      GradientButton(
                          callBackFunction: () {}, buttonName: "Register"),
                      SizedBox(
                        height: 3,
                      ),
                      Center(child: Text("or")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.sms,
                              color: Colors.red,
                            ),
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Icon(
                              Icons.call,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
