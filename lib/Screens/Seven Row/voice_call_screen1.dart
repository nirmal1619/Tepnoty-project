import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/calling_action._container.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';
import 'package:untitled2/Screens/Seven%20Row/voice_call_screen2.dart';

class VoiceCallScreenFirst extends StatelessWidget {
  const VoiceCallScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => VoiceCallScreenSecond());
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SCurvedConatiner(
                containerHeight: 301.h,
                containerWidth: 428.w,
                useChild: false,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 130.h),
                  height: 232.h,
                  width: 232.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFB450FF), width: 4.w),
                  ),
                  child: CircleAvatar(
                    radius: 116.r,
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage(""),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 150.h),
          Text(
            "Manikumar Pokala",
            style: TextStyle(fontSize: 24.sp),
          ),
          SizedBox(height: 10.h),
          Text(
            "3:05",
            style: TextStyle(fontSize: 14.sp),
          ),
          Spacer(),
          CallingAction(),
        ],
      ),
    );
  }
}
