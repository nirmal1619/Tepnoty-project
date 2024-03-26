import 'dart:async';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/First%20Row/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<SplashScreen> {
  double _position = Get.height * 0.47; // Initial top position
  double _left = 0;
  double _right = 0;
  bool isCompelete = false;
  String appName = "TEPNOTY";
  @override
  void initState() {
    super.initState();
    _startAnimation();
    // Add a delay to navigate to the onboarding screen after some duration
    Timer(Duration(seconds: 6), () {
      Get.off(OnBoardingScreen());
    });
  }

  void _startAnimation() async {
    // Wait for a brief moment before starting the animation
    // await Future.delayed(Duration(milliseconds: 400));
    await Future.delayed(Duration(milliseconds: 50));
    setState(() {
      _position = Get.height * 0.35;
    });

    // Wait for 1 second before moving the image further down
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      _position = Get.height * 0.45.h;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _position = Get.height * 0.52.h;
      _left = -Get.width * 0.5.w;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      _position = Get.height * 0.42.h;
      _left = -Get.width * 0.65.w;
      isCompelete = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              height: 926.h,
              width: 428.w,
            ),
            Positioned(
                left: Get.width * 0.36.w,
                top: _position + 10.h,
                child: isCompelete
                    ? Animate(
                        effects: [
                          FadeEffect(duration: Duration(seconds: 1)),
                          SlideEffect()
                        ],
                        child: Text(
                          appName,
                          style: TextStyle(
                              fontSize: 38.sp,
                              height: 1.43,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    : Text("")),
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: ClipOval(
                child: Container(
                  //300 92
                  height: 92.h,
                  width: 300.w,
                  color: _position == Get.height * 0.47.h
                      ? Color(0XFF100E13)
                      : Colors.transparent, //74 84 94
                ),
              ),
            ),
            AnimatedPositioned(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                top: _position,
                left: _left,
                right: _right,
                child: Container(
                  margin: EdgeInsets.only(),
                  height: _left == -Get.width * 0.6 ? 84.h : 73.h,
                  width: _left == -Get.width * 0.6 ? 94.w : 84.w,
                  child: Image.asset("assets/images/tepnotyLogo.jpeg"),
                )),
          ],
        ));
  }
}
