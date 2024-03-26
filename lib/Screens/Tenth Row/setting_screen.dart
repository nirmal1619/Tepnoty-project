import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Fourth%20Row/notification_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/help_center.dart';
import 'package:untitled2/Screens/Tenth%20Row/notification_setting.dart';
import 'package:untitled2/Screens/Tenth%20Row/report_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/share_profile_QR_code.dart';
import 'package:untitled2/Screens/Tenth%20Row/upgrade_screen.dart';
import 'package:untitled2/Screens/eleventh%20Row/support_screen.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/Screens/Tenth%20Row/privacy_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Handle back arrow button press
          },
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
              Get.to(() => NotificationSetting());
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
                  buildIconWithText(
                    Icons.privacy_tip_outlined,
                    'Privacy',
                    () {
                      Get.to(() => PrivacyScreen());
                    },
                  ),
                  buildIconWithText(
                    Icons.favorite_outline,
                    'Favorite',
                    () {
                      // Handle Favorite item tap
                    },
                  ),
                  buildIconWithText(
                    Icons.help_outline,
                    'Help Center',
                    () {
                      Get.to(() => HelpCenter());
                    },
                  ),
                  buildIconWithText(
                    Icons.help_outline,
                    'Support',
                    () {
                      // Handle Support item tap
                      Get.to(() => SupportScreen());
                    },
                  ),
                  buildIconWithText(
                    Icons.share_outlined,
                    'Share Profile',
                    () {
                      Get.defaultDialog(
                        backgroundColor: Colors.white,
                        title: "",
                        titlePadding: EdgeInsets.zero,
                        // actions: ,
                        contentPadding: EdgeInsets.zero,
                        content: SizedBox(
                          width: 342.w,
                          height: 92.h,
                          child: _buildShareDialog(),
                        ),
                      );
                    },
                  ),
                  buildIconWithText(
                    Icons.notifications_none_outlined,
                    'Notification',
                    () {
                      Get.to(() => NotificationScreen());
                    },
                  ),
                  buildIconWithText(
                    Icons.archive_outlined,
                    'Archive',
                    () {
                      // Handle Archive item tap
                    },
                  ),
                  buildIconWithText(
                    Icons.qr_code,
                    'QR Update',
                    () {
                      Get.to(() => ShareProfile());
                    },
                  ),
                  buildIconWithText(
                    Icons.arrow_circle_up,
                    'Upgrade',
                    () {
                      Get.to(() => UpgradeScreen());
                    },
                  ),
                  buildIconWithText(
                    Icons.report_outlined,
                    'Report a Problem',
                    () {
                      // Handle Report a Problem item tap
                      Get.to(() => ReportScreen());
                    },
                  ),
                  buildIconWithText(
                    Icons.logout_outlined,
                    'Logout',
                    () {
                      // Handle Logout item tap
                      _showLogOutDialog(context);
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

  Future<dynamic> _showLogOutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Log out ?',
              style: TextStyle(
                  letterSpacing: 0.4, fontSize: 25.sp, color: Colors.white),
            ),
          ),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          backgroundColor: Colors.black,
          content: Container(
            height: 20.h,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                "Are you sure you want to Log out",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: secondaryColorValue),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120.w, 47.h),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColorValue,
                    minimumSize: Size(120.w, 47.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Widget buildIconWithText(IconData iconData, String text, VoidCallback onTap) {
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
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 24.w,
                ),
                SizedBox(width: 20.w),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
              ],
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

class _buildShareDialog extends StatelessWidget {
  const _buildShareDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(0.r),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share_outlined,
                  size: 24.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'Share via',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.folder_copy_outlined,
                size: 24.sp,
                color: Colors.black,
              ),
            ),
            Text(
              'Message via',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.copy,
                size: 24.sp,
                color: Colors.black,
              ),
            ),
            Text(
              'Copy link',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ],
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
