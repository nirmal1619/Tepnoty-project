import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/Screens/Seven%20Row/video_call_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final List<String> options = [
    'Search',
    'Clear Call Log',
    'Block',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 90.h, right: 5.w),
        height: 80.h,
        width: 80.w,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 211, 201),
            shape: BoxShape.circle),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => VideoCall());
              },
              icon: Icon(Icons.arrow_forward)),
          PopupMenuButton(
            color: Colors.black,
            position: PopupMenuPosition.under,
            itemBuilder: (context) {
              return [
                for (var option in options)
                  PopupMenuItem(
                    onTap: () {
                      // Define action for each option
                    },
                    child: Row(
                      children: [
                        Icon(_getIconForOption(option)), // Get icon for option
                        SizedBox(width: 5.w),
                        Text(option), // Text for option
                      ],
                    ),
                  ),
              ];
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(85.h), // Set the preferred height
          child: Container(
            width: 380.w, // Adjust horizontal margin as needed
            height: 48.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    fillColor: Colors.amber,
                    hintText: 'Search Contact',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(
                          255, 24, 23, 23), // Set hint text color
                      fontSize: 16.sp,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade800),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black), // Set text color to black
                )),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
              width: 428.w,
              height: 921.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
              )),
          Positioned(
            top: 0,
            child: Stack(
              children: [
                Container(
                  width: 428.w,
                  height: 188.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(
                            60, 21, 116, 1), // Top color - deep purple
                        Color(0xFF8B4AE4) // Bottom color - light deep purple
                      ],
                    ),
                  ),
                ),
                Positioned(child: BubbleContainer()),
              ],
            ),
          ),
          Positioned(
            left: 24.w,
            top: 215.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTileContainer(
                    "Tepnoty AI", "#.05 min ago", Icons.video_call_outlined),
                SizedBox(height: 20.h),
                Text(
                  "Recents",
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(height: 20.h),
                customTileContainer("Tepnoty AI", "#.05 min ago", Icons.call),
                SizedBox(height: 20.h),
                customTileContainer("Tepnoty AI", "#.05 min ago", Icons.call),
                SizedBox(height: 20.h),
                customTileContainer("Tepnoty AI", "#.05 min ago", Icons.call),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget customTileContainer(String title, String subtittle, IconData icon) {
    return Container(
      width: 380.w,
      height: 80.h,
      decoration: BoxDecoration(
        border: Border.all(width: 1.w, color: Colors.white),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 16.w), // Adjust the spacing as needed
          CircleAvatar(
            backgroundColor:
                Colors.blue, // You can change the color or use an image
            radius: 25.r, // Adjust the size as needed
            // You can add child or backgroundImage properties to display an image
          ),
          SizedBox(width: 16.w), // Adjust the spacing as needed
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                subtittle,
                style: TextStyle(fontSize: 12.sp, color: Color(0xFFD9D9D9)),
              ),
            ],
          ),
          Spacer(), // Add space between text and icon
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(
              icon,
              size: 25.sp,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIconForOption(String option) {
    switch (option) {
      case 'Search':
        return Icons.search;
      case 'Clear Call Log':
        return Icons.call;

      case 'Block':
        return Icons.block_rounded;
      case 'Settings':
        return Icons.settings;
      default:
        return Icons.help; // Default icon if option is not recognized
    }
  }
}
