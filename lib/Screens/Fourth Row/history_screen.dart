import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Fourth%20Row/notification_screen.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode; // Get the current theme mode

    return Scaffold(
      body: Stack(
        children: [
          const LittleCurvedContainer(),
          Positioned(
            top: 80.h, // Use .h for height
            left: 0,
            right: 0,
            // Use .w for width
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History',
                    style: TextStyle(
                      fontSize: 24,
                      height: 1.43,
                      letterSpacing: 0.3.w,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // SizedBox(
                  //   width: 235.w, // Use .w for width
                  // ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 24,
                      // color: isDarkMode
                      //     ? const Color(0xFFD9D9D9)
                      //     : Colors.black, // Icon color based on theme mode
                    ),
                    onPressed: () {
                      // Add your onPressed logic here
                      Get.to(() => NotificationScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 140.h, // Use .h for height
            left: 0,
            right: 0,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 24.w), // Use .w for width
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 40.h), // Use .h for height
                  ContainerTittleSubtittle(
                    tittle: 'Photography and hiking sound awesome!',
                    subtittle: 'As for me, I love exploring the vast world of ',
                  ),
                  SizedBox(height: 20.h), // Use .h for height
                  ContainerTittleSubtittle(
                    tittle: 'Photography and hiking sound awesome!',
                    subtittle: 'As for me, I love exploring the vast world of ',
                  ),
                  SizedBox(height: 20.h), // Use .h for height
                  ContainerTittleSubtittle(
                    tittle: 'Photography and hiking sound awesome!',
                    subtittle: 'As for me, I love exploring the vast world of ',
                  ),
                  SizedBox(height: 20.h), // Use .h for height
                  ContainerTittleSubtittle(
                    tittle: 'Photography and hiking sound awesome!',
                    subtittle: 'As for me, I love exploring the vast world of ',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerTittleSubtittle extends StatelessWidget {
  final String tittle;
  final String subtittle;
  const ContainerTittleSubtittle(
      {Key? key, required this.tittle, required this.subtittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99.h, // Use .h for height
      width: 380.w, // Use .w for width
      decoration: BoxDecoration(
        border: Border.all(
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
        borderRadius: BorderRadius.circular(12.r), // Use .r for radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          tittle, // Assuming you have a title for each item
                          // maxLines: 1,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.sp, // Use .sp for font size
                            // color: Theme.of(context).brightness == Brightness.dark ? Color(0xFFD9D9D9) : Colors.black,
                            // Add other styles as needed
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h), // Use .h for height
                  Text(
                    subtittle, // Assuming you have a subtitle for each item
                    // maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp, // Use .sp for font size
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Color(0xFFD9D9D9)
                          : Colors.black,
                      // Add other styles as needed
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 16.sp, // Use .sp for font size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
