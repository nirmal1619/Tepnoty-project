import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Get.theme.brightness == Brightness.dark;

    return Drawer(
      // width: 50,
      child: Container(
        width: 280.w,
        height: 926.h,
        color: isDarkMode ? Colors.black87 : Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 32.r,
                      backgroundColor: Colors.white,
                      // Replace with user's avatar image
                      // backgroundImage: AssetImage('assets/user_avatar.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Text(
                            'Mani Kumar Pokola',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Text(
                            'Design Stylist',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xFFD9D9D9),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  height: 90.h,
                  width: 270.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: CircleAvatar(
                          radius: 25.r,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.h),
                              Text(
                                'Upgrade Program',
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: 14.sp,
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Unlock your AI Model and get all features',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Expanded(
                child: ListView(
                  children: [
                    _buildDrawerItem(Icons.chat_outlined, 'New Chat'),
                    _buildDrawerItem(Icons.history, 'Recent History'),
                    _buildDrawerItem(Icons.storage_rounded, 'Set Database'),
                    _buildDrawerItem(Icons.settings_outlined, 'Settings'),
                    _buildDrawerItem(Icons.help_center_outlined, 'Help Center'),
                    _buildDrawerItem(
                        Icons.feedback_outlined, 'Send us Feedback'),
                    SizedBox(
                        height: 10
                            .h), // Add SizedBox to create space between items and Logout button
                  ],
                ),
              ),
              Divider(color: Colors.grey),
              ListTile(
                onTap: () {
                  // Handle logout action
                },
                leading: Icon(Icons.logout,
                    color: Get.isDarkMode ? Colors.white : Colors.black),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35.h,
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            onTap: () {},
            leading: Icon(
              icon,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
            // horizontalTitleGap: Ed,\
            // titleAlignment: ListTileTitleAlignment.threeLine,
            title: Text(
              name,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode ? Colors.white : Colors.black),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.w, top: 10),
          child: Divider(color: Colors.grey),
        ),
      ],
    );
  }
}
