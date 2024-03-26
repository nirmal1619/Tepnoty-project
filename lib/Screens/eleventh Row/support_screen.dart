import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20Icons/bell_icon.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/share_profile_QR_code.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.h),
          child: Container(
            height: 25.h,
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 25.w,
                    color: Color(0xFFDADADA),
                  ),
                ),
              ],
            ),
          ),
        ),
        leadingWidth: 300.w,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 20.h),
          child: Text(
            "Support",
            style: TextStyle(
              fontSize: 24.sp,
              letterSpacing: 0.3,
              color: Colors.white,
              height: 1.45.h,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w).copyWith(top: 20.h),
            child: BellNotificationDesign(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            S2CurvedConatiner(),
            Positioned(
              top: 100.h,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          height: 41.h,
                          width: 41.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.4),
                          ),
                          child: Icon(Icons.call_outlined),
                        ),
                        SizedBox(width: 20.w),
                        Text(
                          "Queries Answered 24/7",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 85.w)
                          .copyWith(top: 10.h),
                      width: 160.w,
                      height: 38.h,
                      child: Center(
                        child: Text(
                          "Connect",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    SizedBox(
                      height: 222.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildContainer("Technical Issue"),
                    buildContainer("Purchase Queries"),
                    buildContainer("Report a problem"),
                    buildContainer("Other issues"),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconWithText(IconData iconData, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 24.w,
                // color: Colors.deepPurple,
              ),
              SizedBox(width: 8.0.w),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  // color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 380.w,
          color: Color(0xFFD9D9D9),
          height: 1.h,
        ),
      ],
    );
  }

  buildContainer(String firstText) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      width: Get.width - 50.w,
      height: 80.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Icon(
              Icons.check_circle,
              color: secondaryColorValue,
            ),
          ), // Example icon, replace with your desired icon
          SizedBox(width: 10.w), // Adjust spacing as needed
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                firstText,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
