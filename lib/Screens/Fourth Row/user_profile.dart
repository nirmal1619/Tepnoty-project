import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/button/adjustable_gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: AdjustableGradientButton(
              buttonHeight: 22.h,
              buttonWidth: 90.w,
              buttonName: "Go Premium",
              voidCallback: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          StackDesign2(),
          Positioned(
            top: 110.h,
            left: 24.w,
            right: 24.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25.h),
                profileStatus(),
                SizedBox(height: 20.h),
                Text(
                  "Manikumar Pokala",
                  style: TextStyle(fontSize: 16.sp),
                ),
                Text(
                  "Leave a note",
                  style: TextStyle(fontSize: 16.sp, color: primaryColorValue),
                ),
                SizedBox(height: 20.h),
                textWithIcon(Icons.dark_mode_outlined, "Dark Mode", () {}),
                SizedBox(height: 10.h),
                Divider(),
                SizedBox(height: 10.h),
                textWithIcon(Icons.circle_outlined, "Active Status", () {}),
                SizedBox(height: 10.h),
                Divider(),
                SizedBox(height: 10.h),
                textWithIcon(Icons.help_outline_outlined, "Help", () {}),
                SizedBox(height: 10.h),
                Divider(),
                SizedBox(height: 10.h),
                textWithIcon(Icons.privacy_tip_outlined, "Privacy", () {}),
                SizedBox(height: 10.h),
                Divider(),
                SizedBox(height: 10.h),
                textWithIcon(
                    Icons.perm_device_information_rounded, "Update", () {}),
                SizedBox(height: 10.h),
                Divider(),
                SizedBox(height: 10.h),
                textWithIcon(Icons.fingerprint,
                    "Fingerprint, Face, and Password", () {}),
                SizedBox(height: 10.h),
                Divider(),
                SizedBox(height: 10.h),
                textWithIcon(
                    Icons.monetization_on, "Tepnoty Plus Membership", () {}),
                SizedBox(height: 10.h),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Stack profileStatus() {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 65.r,
          // backgroundImage: AssetImage('your_image_path_here'),
        ),
        Positioned(
          bottom: -20.h,
          right: -10.w,
          child: SizedBox(
            width: 70.w,
            height: 70.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_enhance_outlined,
                    color: Colors.black,
                    size: 24.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget textWithIcon(IconData icon, String text, VoidCallback onPressed) {
    return Row(
      children: [
        Icon(icon, size: 24.w),
        SizedBox(width: 10.w),
        Text(
          text,
          style: TextStyle(fontSize: 20.sp),
        ),
        Spacer(),
      ],
    );
  }
}
