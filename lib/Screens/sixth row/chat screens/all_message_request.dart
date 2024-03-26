import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/Tenth%20Row/edit_profile_screen.dart';

class AllMessageRequest extends StatelessWidget {
  const AllMessageRequest({Key? key}) : super(key: key);

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
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          SizedBox(
            child: TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(() => EditProfile());
                },
                child: Text("Next"),
              ),
            ),
          ),
          SizedBox(
            width: 70.w,
            child: buildPopupMenuButton(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const LittleCurvedContainer(),
            Positioned(
              top: 110.h,
              left: 0.w,
              right: 0.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      Text(
                        "Chat",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.3.w,
                      ),
                      const Icon(Icons.person_2_rounded),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    height: 55.h,
                    width: 380.w,
                    child: Row(
                      children: [
                        Spacer(
                          flex: 2,
                        ),
                        Text("All requests "),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings_outlined),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: Color(0XFFD9D9D9),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  ttileContainer("Manikumar Pokala", "here is it"),
                  ttileContainer("Sital", "send your a message...."),
                  ttileContainer("Mukesh", "send your a message...."),
                  ttileContainer("Ramesh", "send your a message...."),
                  ttileContainer("Ram", "send your a message...."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuButton buildPopupMenuButton() {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      icon: Icon(Icons.menu),
      color: Colors.black,
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
        child: Row(
          children: [
            SizedBox(width: 5.w),
            Icon(icon, color: Colors.white), // Icon
            SizedBox(width: 5.w), // SizedBox for spacing
            Text(text,
                style:
                    TextStyle(color: Colors.white, fontSize: 16.sp)), // String
          ],
        ),
      ),
    );
  }

  Container ttileContainer(String tittle, String subtittle) {
    return Container(
      margin: EdgeInsets.only(bottom: 22.h),
      height: 80.h,
      width: 380.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 0.w),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 22.r,
                ),
                Positioned(
                  bottom: 4.h,
                  right: 0.w,
                  child: Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tittle, // Display the title
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                subtittle, // Display the subtitle
                style: TextStyle(fontSize: 12.sp, color: Color(0xFFD9D9D9)),
              ),
            ],
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            "3.49",
            style: TextStyle(color: Color(0XFFD9D9D9)),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          width: 1.w,
          color: Color(0xFFD9D9D9),
        ),
      ),
    );
  }
}
