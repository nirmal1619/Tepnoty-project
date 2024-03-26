import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            onPressed: () {
              Get.to(RegistrationScreen());
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 16.sp), // Use .sp for font size
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: SingleChildScrollView(
      child: Stack(
      children: [
      Container(
      height: 926.h, // Use .h for height
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 132, 64, 221),
            Color(0xFF8B4AE4)
          ],
        ),
      ),
      child: BubbleContainer(),
    ),
    Positioned(
    top: 200.h, // Use .h for height
    left: 0,
    right: 0,
    child: Container(
    height: 926.h, // Use .h for height
    decoration: BoxDecoration(
    borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)), // Use .r for radius
    color: Colors.black.withOpacity(1), // Black with full opacity
    boxShadow: [
    BoxShadow(
    color: Colors.grey.shade800.withOpacity(0.5), // Grey with 50% opacity
    spreadRadius: 3.w, // Use .w for width
    blurRadius: 5.w, // Use .w for width
    offset: Offset(0, -3.h), // Use .h for height
    ),
    BoxShadow(
    color: Colors.grey.shade700.withOpacity(0.5), // Grey with 50% opacity
    spreadRadius: 3.w, // Use .w for width
    blurRadius: 5.w, // Use .w for width
    offset: Offset(0, 3.h), // Use .h for height
    ),
    ],
    ),
    child: Padding(
    padding: EdgeInsets.all(20.sp), // Use .sp for font size
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Create Account",
    style: TextStyle(
    fontSize: 24.sp, // Use .sp for font size
    height: 1.43.h, // Use .sp for font size
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    SizedBox(height: 20.h), // Use .h for height
    Text(
    "Name",
    style: TextStyle(
    fontSize: 18.sp, // Use .sp for font size
    color: Color(0xFFD9D9D9),
    ),
    ),
    SizedBox(height: 10.h), // Use .h for height
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.r), // Use .r for radius
    border: Border.all(color: Color(0XFFD9D9D9)),
    ),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Enter your full name",
    hintStyle: TextStyle(
    color: Color(0xFFD9D9D9),
    fontSize: 14.sp, // Use .sp for font size
    ),
    border: InputBorder.none,
    contentPadding: EdgeInsets.symmetric(horizontal: 10.w), // Use .w for width
    ),
    ),
    ),
    SizedBox(height: 20.h), // Use .h for height
    Text(
    "Email",
    style: TextStyle(
    fontSize: 18.sp, // Use .sp for font size
    color: Color(0xFFD9D9D9),
    ),
    ),
    SizedBox(height: 10.h), // Use .h for height
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.r), // Use .r for radius
    border: Border.all(color: Color(0XFFD9D9D9)),
    ),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Enter your email",
    hintStyle: TextStyle(
    color: Color(0xFFD9D9D9),
    fontSize: 14.sp, // Use .sp for font size
    ),
    border: InputBorder.none,
    contentPadding: EdgeInsets.symmetric(horizontal: 10.w), // Use .w for width
    ),
    ),
    ),
    SizedBox(height: 20.h), // Use .h for height
    Text(
    "Phone Number",
    style: TextStyle(
    fontSize: 18.sp, // Use .sp for font size
    color
        : Color(0xFFD9D9D9),
    ),
    ),
      SizedBox(height: 10.h), // Use .h for height
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), // Use .r for radius
          border: Border.all(color: Color(0XFFD9D9D9)),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter your phone number",
            hintStyle: TextStyle(
              color: Color(0xFFD9D9D9),
              fontSize: 14.sp, // Use .sp for font size
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w), // Use .w for width
          ),
        ),
      ),
      SizedBox(height: 15.h), // Use .h for height
      Row(
        children: [
          SizedBox(
            height: 5.h, // Use .h for height
            child: Checkbox(
              activeColor: Colors.white,
              checkColor: Colors.black,
              fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
              value: true,
              onChanged: null,
            ),
          ),
          Text(
            "Agree to terms and conditions",
            style: TextStyle(
              fontSize: 14.sp, // Use .sp for font size
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(height: 5.h), // Use .h for height
      Row(
        children: [
          SizedBox(
            height: 5.h, // Use .h for height
            child: Checkbox(
              activeColor: Colors.white,
              checkColor: Colors.black,
              fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
              value: true,
              onChanged: null,
            ),
          ),
          Text(
            "Agree to privacy and policies",
            style: TextStyle(
              fontSize: 14.sp, // Use .sp for font size
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h), // Use .h for height
      GradientButton(
        callBackFunction: () {},
        buttonName: "Register",
      ),
      SizedBox(
        height: 3.h, // Use .h for height
      ),
      Center(
        child: Text(
          "or",
          style: TextStyle(
            fontSize: 16.sp, // Use .sp for font size
            color: Colors.white,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.sms,
              color: Colors.red,
            ),
            height: 48.h, // Use .h for height
            width: 48.w, // Use .w for width
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20.w, // Use .w for width
          ),
          Container(
            height: 48.h, // Use .h for height
            width: 48.w, // Use .w for width
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
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
