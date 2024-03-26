import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20Icons/bell_icon.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/Fourth%20Row/dataset_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool isReadSelected = true;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(5.h),
            child: Container(
              height: 20,
              margin: EdgeInsets.symmetric(horizontal: 12),
              // color: Colors.white,
              child: Row(
                children: [
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))
                ],
              ),
            )),
        // backgroundColor: Colors.transparent,
        leadingWidth: 220.w,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Notification",
            style: TextStyle(
              fontSize: 24.sp,
              letterSpacing: 0.3,
              color: Colors.white,
              height: 1.45,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Add your logic for the first button here
              Get.to(() => DataSetScreen());
            },
            child: Text("Next"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: BellNotificationDesign(),
          )
          // SizedBox(height: 16), // Add some spacing between the buttons
        ],
      ),
      body: Stack(
        children: [
          const LittleCurvedContainer(),
          // Positioned(
          //   top: 40.h, // Use .h for height
          //   left: 20.w, // Use .w for width
          //   child: Row(
          //     children: [
          //       Text(
          //         "Notification",
          //         style: TextStyle(
          //           fontSize: 24,
          //           letterSpacing: 1.3,
          //           height: 1.45,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 40.h, // Use .h for height
          //   right: 15.w, // Use .w for width
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       // BellNotificationDesign(), // Assuming BellIcon is a custom widget
          //       // IconButton(
          //       //   onPressed: () {
          //       //     // Add functionality for back arrow button here
          //       //   },
          //       //   icon: Icon(Icons.arrow_back),
          //       // ),
          //     ],
          //   ),
          // ),
          Positioned(
            top: 100.h, // Use .h for height
            left: 0.w, // Use .w for width
            right: 0,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24),
                  width: 100.w, // Use .w for width
                  height: 38.h, // Use .h for height
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(12.r), // Use .r for radius
                    color: isReadSelected
                        ? const Color(0xFFD9D9D9)
                        : Colors.transparent,
                    border: Border.all(
                      color: isDarkMode ? Colors.white : Colors.black,
                      width: isDarkMode ? 1.5.w : 1.0, // Use .w for width
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isReadSelected = true;
                      });
                      // Add functionality for 'read' container here
                    },
                    child: Center(
                      child: Text(
                        "Read",
                        style: TextStyle(
                          fontSize: 16.sp, // Use .sp for font size
                          color: isReadSelected
                              ? secondaryColorValue
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 40.w), // Use .w for width
                Container(
                  width: 100.w, // Use .w for width
                  height: 38.h, // Use .h for height
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(12.r), // Use .r for radius
                    color: !isReadSelected
                        ? const Color(0xFFD9D9D9)
                        : Colors.transparent,
                    border: Border.all(
                      color: isDarkMode ? Colors.white : Colors.black,
                      width: isDarkMode ? 1.5.w : 1.0, // Use .w for width
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isReadSelected = false;
                      });
                      // Add functionality for 'unread' container here
                    },
                    child: Center(
                      child: Text(
                        "Unread",
                        style: TextStyle(
                          fontSize: 16.sp, // Use .sp for font size
                          color: !isReadSelected
                              ? secondaryColorValue
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 175.h,
            left: 0,
            right: 0, // Use .h for height
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 24.w), // Use .w for width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildContainer(isDarkMode),
                  SizedBox(
                    height: 20.h, // Use .h for height
                  ),
                  buildContainer(isDarkMode),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(bool isDarkMode) {
    return Container(
      width: 380.w, // Use .w for width
      height: 78.h, // Use .h for height
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: isDarkMode ? Colors.white : Colors.black,
        ),
        borderRadius: BorderRadius.circular(12.r), // Use .r for radius
      ),
      child: ListTile(
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(bottom: 10, right: 3), // Use .w for width
              child: Text(
                "3 sec ago",
                style: TextStyle(
                  fontSize: 12.spMin,
                  color:
                      isDarkMode ? Colors.white.withOpacity(0.7) : Colors.black,
                ),
              ),
            ),
          ],
        ),
        horizontalTitleGap: 0,
        contentPadding:
            EdgeInsets.symmetric(horizontal: 0.w), // Use .w for width
        titleAlignment: ListTileTitleAlignment.top,

        // isThreeLine: true,
        title: Container(
          width: 229.w,
          child: Text(
            "Where do you see yourself in the next ages.",
            style: TextStyle(
              fontSize: 16.sp, // Use .sp for font size
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        // leadingAndTrailingTextStyle: ,
        leading: CircleAvatar(
          radius: 48.r,
        ),
      ),
    );
  }
}
