import 'dart:ffi';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      _position = Get.height * 0.45;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _position = Get.height * 0.52;
      _left = -Get.width * 0.5;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      _position = Get.height * 0.46;
      _left = -Get.width * 0.6;
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
              height: Get.height,
              width: Get.width,
            ),
            Positioned(
                left: Get.width * 0.35,
                top: _position + 15,
                child: isCompelete
                    ? Animate(
                  effects: [
                    FadeEffect(duration: Duration(seconds: 1)),
                    SlideEffect()
                  ],
                  child: Text(
                    appName,
                    style: TextStyle(
                        fontSize: 38,
                        height: 1.43,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w500),
                  ),
                )
                    : Text("")),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ClipOval(
                child: Container(
                  //300 92
                  height: 92,
                  width: 300,
                  color: _position == Get.height * 0.47
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
                  height: _left == -Get.width * 0.6 ? 84 : 73,
                  width: _left == -Get.width * 0.6 ? 94 : 84,
                  child: Image.asset("assets/images/tepnotyLogo.jpeg"),
                )),
          ],
        ));
  }
}
