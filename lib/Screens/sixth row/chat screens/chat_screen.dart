import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chating_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          SizedBox(
            child: TextButton(
                onPressed: () {},
                child: TextButton(
                  onPressed: () {
                    Get.to(() => ChatingScreen());
                  },
                  child: Text("Next"),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: buildPopupMenuButton(),
          ),
        ],
      ),
      body: Stack(
        children: [
          const LittleCurvedContainer(),
          Positioned(
              top: 110.h, // Dynamic height
              left: 20.w, // Dynamic width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Chat",
                        style: TextStyle(
                            fontSize: 24.sp, // Dynamic text size
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: (Get.width * 0.3).w, // Dynamic width
                      ),
                      const Icon(Icons.person_2_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 25.h, // Dynamic height
                  ),
                  ttileContainer("Manikumar Pokala", "here is it"),
                  SizedBox(
                    height: 24.h, // Dynamic height
                  ),
                  ttileContainer("Tepnoty AI", "send your message"),
                ],
              ))
        ],
      ),
    );
  }

  PopupMenuButton buildPopupMenuButton() {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      icon: Icon(Icons.menu),
      color: Colors.black,
      // child: Container(),
      position: PopupMenuPosition.under,
      itemBuilder: (BuildContext context) {
        return [
          buildPopupMenuItem(Icons.account_circle_outlined, 'Profile'),
          buildPopupMenuItem(Icons.chat_bubble_outline, 'Chat'),
          buildPopupMenuItem(Icons.message_outlined, 'Message Request'),
          buildPopupMenuItem(Icons.archive_outlined, 'Archive'),
          buildPopupMenuItem(Icons.help_outline, 'Help Center'),
          buildPopupMenuItem(Icons.delete_outline_outlined, 'Delete'),
        ];
      },
    );
  }

  PopupMenuItem buildPopupMenuItem(IconData icon, String text) {
    return PopupMenuItem(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 217.w,

        height: 44.h,
        color: Colors.grey[900], // Dark gray container
        // padding: EdgeInsets.symmetric(
        //     vertical: 5.h,
        //     horizontal: 15.w), // Add padding for space inside the container
        child: Expanded(
          child: Row(
            children: [
              SizedBox(width: 5.w),
              Icon(icon, color: Colors.white), // Icon
              SizedBox(width: 5.w), // SizedBox for spacing
              Text(text,
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.sp)), // String
            ],
          ),
        ),
      ),
    );
  }

  Container ttileContainer(String tittle, String subtittle) {
    return Container(
      height: 80.h, // Dynamic height
      width: 380.w, // Dynamic width
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w), // Dynamic width
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 22.r, // Dynamic radius
                ),
                Positioned(
                    bottom: 4.h, // Dynamic height
                    right: 0,
                    child: Container(
                      width: 8.r, // Dynamic radius
                      height: 8.r, // Dynamic radius
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ))
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tittle,
                style: TextStyle(fontSize: 16.sp), // Dynamic text size
              ),
              Text(
                subtittle,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xFFD9D9D9)), // Dynamic text size
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), // Dynamic radius
          border: Border.all(width: 1, color: const Color(0xFFD9D9D9))),
    );
  }

  Stack profileStatus() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 22.r, // Dynamic radius
        ),
        Positioned(
            bottom: 4.h, // Dynamic height
            right: 0,
            child: Container(
              width: 8.r, // Dynamic radius
              height: 8.r, // Dynamic radius
              decoration: const BoxDecoration(
                  color: Colors.green, shape: BoxShape.circle),
            ))
      ],
    );
  }
}
