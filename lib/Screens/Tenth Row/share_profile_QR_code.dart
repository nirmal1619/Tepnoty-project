import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/upgrade_screen.dart';

class ShareProfile extends StatelessWidget {
  const ShareProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () {
                Get.to(() => UpgradeScreen());
              },
              icon: Icon(Icons.menu)),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              S2CurvedConatiner(),
              Positioned(
                left: 110.w,
                top: 120.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "ManiKumar Pokala",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Lexend",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h, left: 5.w),
                          child: Text(
                            "He/Him",
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Stack(
                            children: [
                              Container(
                                height: 22.h,
                                width: 22.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.w,
                                    color: Colors.white,
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF8B4AE4),
                                      Color(0xFFCE7EF3),
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Positioned(
                                  top: 5.h,
                                  right: 10.w,
                                  child: Icon(
                                    Icons.pentagon_outlined,
                                    weight: 15,
                                    opticalSize: 15,
                                    size: 7.sp,
                                    color: Color(0xFFFFE713),
                                  )),
                              Positioned(
                                  top: 10.h,
                                  bottom: 15.h,
                                  right: 4.w,
                                  child: Icon(
                                    Icons.mode_edit_outline_outlined,
                                    size: 7.sp,
                                    color: Color(0xFFFFE713),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "designsby_Mani",
                          style: TextStyle(
                              fontSize: 12.spMin, color: Color(0xFFC9C9C9)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, top: 0.h),
                          child: Container(
                            height: 16.h,
                            width: 110.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1),
                              ),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(139, 74, 228, 1),
                                Color.fromRGBO(206, 126, 243, 1)
                              ]),
                            ),
                            child: Center(
                              child: Text(
                                "Request To Message",
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100.h,
                left: 10.w,
                child: Stack(
                  children: [
                    Container(
                      height: 85.h,
                      width: 88.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                              // color: Colors.white,

                              )),
                      child: CircleAvatar(),
                    ),
                    Positioned(
                      bottom: 1.h,
                      right: 1.w,
                      child: Container(
                        height: 24.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                            color: secondaryColorValue,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.w,
                            )),
                        child: Icon(
                          Icons.edit_sharp,
                          size: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 270.h,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      Text(
                        "For Sharing Your Profile Easily Via Different Devices and Platforms",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(height: 25.h),
                      Text(
                        "QR Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 24.sp),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 317.h,
                        width: 317.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.w),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Icon(
                          Icons.qr_code,
                          size: 250.sp,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Center(
                          child: Text(
                        "scan me",
                        style: TextStyle(fontSize: 16.sp),
                      )),
                      SizedBox(
                        height: 52.h,
                      ),
                      GradientButton(
                          callBackFunction: () {}, buttonName: "Share")
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
