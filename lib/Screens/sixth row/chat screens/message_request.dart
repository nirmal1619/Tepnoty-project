import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/all_message_request.dart';

class MessageRequest extends StatelessWidget {
  const MessageRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => AllMessageRequest());
              },
              icon: Icon(Icons.arrow_forward)),
          buildPopupMenuButton(),
        ],
      ),
      body: Stack(
        children: [
          LittleCurvedContainer(),
          Positioned(
            left: 0,
            right: 0,
            top: 90.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w).copyWith(),
                  child: Row(
                    children: [
                      Text(
                        "Manikumar Pokala",
                        style: TextStyle(
                          fontSize: 24.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 102.h,
                  width: 102.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey, // Placeholder color
                  ),
                  // Custom Avatar goes here
                ),
                SizedBox(height: 0),
                Text(
                  "Mani Kumar",
                  style: TextStyle(
                    fontSize: 24.sp,
                    height: 1.4.h,
                  ),
                ),
                SizedBox(height: 0),
                Text(
                  "Tepnoty Mani Kumar",
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "506 Followers",
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "8 Posts",
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                Text(
                  "Follow you",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),

          // Circular Avatar with Stack and Container
          // Positioned(
          //   left: 20,
          //   top: 20,
          //   child: Container(
          //     height: 38.h,
          //     width: 38.w,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.grey, // Placeholder color
          //     ),
          //     // Custom Avatar goes here
          //   ),
          // ),
          // Red Circular Dot

          // Row with Container containing text widget
          Positioned(
              left: 0,
              right: 0,
              bottom: 80,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "3:34",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.grey.shade500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w)
                        .copyWith(bottom: 8.h),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 24.w),
                              height: 38.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey, // Placeholder color
                              ),
                              // Custom Avatar goes here
                            ),
                            Positioned(
                              right: 5.w,
                              bottom: 3.h,
                              child: Container(
                                height: 10.h,
                                width: 10.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  color: Colors.red, // Your custom dot color
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 18.h,
                          constraints:
                              BoxConstraints(minWidth: 30.w, maxWidth: 228.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Hello bro",
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 310.w),
                      child: Center(
                        child: Text(
                            textAlign: TextAlign.center,
                            "Accept  message request from Vicky(vickysagar48)?"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 380.w),
                    child: Text(
                      textAlign: TextAlign.center,
                      "If you accept, they will also be able to call you and see info such as your activity and status when you have read messages. ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 37.h,
                          width: Get.width * 0.26.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Center(
                            child: Text(
                              "Block",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        Container(
                          height: 37.h,
                          width: Get.width * 0.35.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Center(
                            child: Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        Container(
                          height: 37.h,
                          width: Get.width * 0.26.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class LittleCurvedContainer extends StatelessWidget {
  const LittleCurvedContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: 428.w,
          height: 921.h,
          decoration: const BoxDecoration(
            color: Color(0xFF6E40E0),
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 115.h - 35.h); // Starting point
    path.quadraticBezierTo(
      0,
      161.h - 35.h,
      57.w,
      161.h - 35.h,
    );
    path.lineTo(size.width - 110.w, 161.h - 35.h);
    path.quadraticBezierTo(
        size.width - 35.w, 161.h - 35.h, size.width, 210.h - 35.h);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
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
              style: TextStyle(color: Colors.white, fontSize: 16.sp)), // String
        ],
      ),
    ),
  );
}
