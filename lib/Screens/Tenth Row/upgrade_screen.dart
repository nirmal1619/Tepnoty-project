import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20Icons/bell_icon.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/report_screen.dart';

class UpgradeScreen extends StatelessWidget {
  const UpgradeScreen({Key? key});

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
        leadingWidth: 150.w,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 20.h),
          child: Text(
            "Upgrade",
            style: TextStyle(
              fontSize: 24.sp,
              letterSpacing: 0.33,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          height: 41.h,
                          width: 41.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.4),
                          ),
                          child: Icon(
                            Icons.currency_bitcoin,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Upgrade to Premium Package",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //     // width: 10.w,
                        //     ),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: Icon(Icons.arrow_back),
                        // ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 90.w)
                          .copyWith(top: 10.h),
                      width: 198.w,
                      height: 38.h,
                      child: Center(
                        child: Text(
                          "Click to Upgrade",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ).copyWith(color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    SizedBox(
                      height: 120.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(height: 16.h),
                    buildContainer("Tepnoty Plus", "Monthly package"),
                    buildContainer("Tepnoty Plus Premium", "Quartly package"),
                    buildContainer("Tepnoty Plu Ultras", "Year package"),
                    // buildContainer("Tepnoty Plus", "Monthly package")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildContainer(String firstText, String secondText) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      width: 380.w,
      height: 96.h,
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
                style: TextStyle(
                  fontSize: 25.spMin,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                secondText,
                style:
                    TextStyle(fontSize: 16.spMin // fontWeight: FontWeight.bold,
                        ),
              ),
            ],
          ),
        ],
      ),
    );
  }

// class LittleCurvedContainer extends StatelessWidget {
//   const LittleCurvedContainer({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
}
