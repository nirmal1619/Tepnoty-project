import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Fourth%20Row/notification_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/report_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/upgrade_screen.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/Screens/Tenth%20Row/privacy_screen.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // centerTitle: true,
        title: Text(
          "Help Centre",
          style: TextStyle(fontSize: 20.sp),
        ),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
              // Handle back arrow button press
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
              Get.to(() => PrivacyScreen());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
            },
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: _MyClipper2(),
            child: Container(
              color: Colors.white,
              child: ClipPath(
                clipper: _MyClipper1(),
                child: Container(
                  width: 428.w,
                  height: 926.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFF6E40E0),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 90.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTap(
                    'Report a Problem',
                    () {
                      Get.to(() => PrivacyScreen());
                    },
                  ),
                  buildTextTap(
                    'Account Status',
                    () {
                      // Handle Favorite item tap
                    },
                  ),
                  buildTextTap(
                    'Meta Verified',
                    () {
                      // Get.to(());
                    },
                  ),
                  buildTextTap(
                    'Privacy and security help',
                    () {
                      // Handle Support item tap
                    },
                  ),
                  buildTextTap(
                    'Support Requests',
                    () {
                      // Handle Logout item tap
                    },
                  ),
                  SizedBox(height: 0.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextTap(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
          ),
          Container(
            width: 380.w,
            color: Colors.white.withOpacity(0.7),
            height: 1.h,
          ),
        ],
      ),
    );
  }
}

class _MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 100.h);
    path.quadraticBezierTo(0, 85.h, 30.w, 85.h);
    path.lineTo((size.width - 30.w), 85.h);
    path.quadraticBezierTo(size.width, 85.h, size.width, 100.h);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class _MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 101.h);
    path.quadraticBezierTo(0, 86.h, 30.w, 86.h);
    path.lineTo((size.width - 30.w), 86.h);
    path.quadraticBezierTo(size.width, 86.h, size.width, 101.h);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
