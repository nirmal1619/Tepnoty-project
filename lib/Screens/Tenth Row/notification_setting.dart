import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';

class NotificationSetting extends StatelessWidget {
  NotificationSetting({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.arrow_back_ios),
          // ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              LittleCurvedContainer(),
              Positioned(
                top: 90.h,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notification",
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 60.h),
                      Container(
                        height: 56.h,
                        width: 380.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Allow Notification',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                                child: Switch(
                                  trackColor: MaterialStateColor.resolveWith(
                                      (states) => secondaryColorValue),
                                  inactiveTrackColor: Colors.white,
                                  activeTrackColor: Colors.white,
                                  activeColor: Colors.white,
                                  inactiveThumbColor: Colors.white,
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 50.w,
                                height: 80.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(
                                      color: Colors.white, width: 5.w),
                                ),
                                child: Center(
                                  child: Container(
                                    width: 30.w,
                                    height: 5.h,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text("Lock Screen",
                                  style: TextStyle(fontSize: 12.sp)),
                              SizedBox(height: 10.h),
                              Icon(Icons.check_circle,
                                  color: secondaryColorValue),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 50.w,
                                height: 80.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(
                                      color: Colors.white, width: 5.w),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.h),
                                      child: Container(
                                        width: 30.w,
                                        height: 5.h,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text("Banner", style: TextStyle(fontSize: 12.sp)),
                              SizedBox(height: 10.h),
                              Icon(Icons.check_circle,
                                  color: secondaryColorValue),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        height: 56.h,
                        width: 380.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20.w),
                            Column(
                              children: [
                                SizedBox(height: 3.h),
                                Text("Badge",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.h),
                                  child: Text("Dot",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Color(0xFFA264F7))),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        height: 208.h,
                        width: 380.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ringtone",
                                      style: TextStyle(fontSize: 16.sp)),
                                  Switch(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    trackColor: MaterialStateColor.resolveWith(
                                        (states) => secondaryColorValue),
                                    inactiveTrackColor: Colors.white,
                                    activeTrackColor: Colors.white,
                                    activeColor: Colors.white,
                                    inactiveThumbColor: Colors.white,
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Vibrate",
                                      style: TextStyle(fontSize: 16.sp)),
                                  Switch(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    trackColor: MaterialStateColor.resolveWith(
                                        (states) => secondaryColorValue),
                                    inactiveTrackColor: Colors.white,
                                    activeTrackColor: Colors.white,
                                    activeColor: Colors.white,
                                    inactiveThumbColor: Colors.white,
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Message Notification",
                                      style: TextStyle(fontSize: 16.sp)),
                                  Switch(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    trackColor: MaterialStateColor.resolveWith(
                                        (states) => secondaryColorValue),
                                    inactiveTrackColor: Colors.white,
                                    activeTrackColor: Colors.white,
                                    activeColor: Colors.white,
                                    inactiveThumbColor: Colors.white,
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Miscellaneous",
                                      style: TextStyle(fontSize: 16.sp)),
                                  Switch(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    trackColor: MaterialStateColor.resolveWith(
                                        (states) => secondaryColorValue),
                                    inactiveTrackColor: Colors.white,
                                    activeTrackColor: Colors.white,
                                    activeColor: Colors.white,
                                    inactiveThumbColor: Colors.white,
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
