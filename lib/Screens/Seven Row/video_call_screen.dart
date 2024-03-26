import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/calling_action._container.dart';
import 'package:untitled2/Screens/Seven%20Row/voice_call_screen1.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h), // Specify preferred height
        child: AppBar(
          centerTitle: true,
          // titleSpacing: Get.width * 0.3,
          title: Text(
            "3:05",
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.flip_camera_ios_outlined),
                onPressed: () {
                  // Add functionality for the camera rotate button
                },
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          backgroundColor: Colors.transparent, // Make app bar transparent
          elevation: 0, // Remove shadow
          automaticallyImplyLeading: false, // Don't show back button
          flexibleSpace: Container(
            height: 110.h,
            decoration: BoxDecoration(
              color: primaryColorValue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Colors.white,
          ),
          Positioned(
            top: 130.h,
            left: Get.width - 120.w,
            child: SizedBox(
              height: 140.h,
              width: 100.w,
              child: Card(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: CallingAction(),
          ),
        ],
      ),
    );
  }
}

/**
 * PreferredSize(
        preferredSize: Size.fromHeight(110.h), // Specify preferred height
        child: AppBar(
          backgroundColor: Colors.transparent, // Make app bar transparent
          elevation: 0, // Remove shadow
          automaticallyImplyLeading: false, // Don't show back button
          flexibleSpace: Container(
            height: 110.h,
            decoration: BoxDecoration(
              color: primaryColorValue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Spacer(),
                Text(
                  "3:05",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Add functionality for the camera rotate button
                    Get.to(() => VoiceCallScreenFirst());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.flip_camera_ios_outlined),
                  onPressed: () {
                    // Add functionality for the camera rotate button
                  },
                ),
              ],
            ),
          ),
        ),
      ),
 */