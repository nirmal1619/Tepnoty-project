import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screen%20state/dataset_state.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20Icons/bell_icon.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/Fifth%20row/Fourth%20Row/dataset_screen.dart';

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
        backgroundColor: Colors.transparent,
        // leading: IconButton(
        //     onPressed: () {
        //       Get.back();
        //     },
        //     icon: Icon(Icons.arrow_back)),
        actions: [
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(() => DataSetScreen());
                },
                child: Text("Next"),
              ))
        ],
      ),
      body: Stack(
        children: [
          const LittleCurvedContainer(),
          const Positioned(
            top: 40,
            left: 20,
            child: Row(
              children: [
                Text(
                  "Notification",
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 1.3,
                    height: 1.45,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(
                //     child:
                //         const BellNotificationDesign()), // Assuming BellIcon is a custom widget

                // SizedBox(
                //   height: 0,
                //   child: IconButton(
                //     onPressed: () {
                //       // Add functionality for back arrow button here
                //     },
                //     icon: const Icon(Icons.arrow_back),
                //   ),
                // ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: SizedBox(
              width: 550,
              height: 38,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: isReadSelected
                          ? const Color(0xFFD9D9D9)
                          : Colors.transparent,
                      border: Border.all(
                        color: isDarkMode ? Colors.white : Colors.black,
                        width: isDarkMode ? 1.5 : 1.0,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isReadSelected = !false;
                        });
                        // Add functionality for 'read' container here
                      },
                      child: Center(
                        child: Text(
                          "Read",
                          style: TextStyle(
                              fontSize: 16,
                              color: (isReadSelected)
                                  ? secondaryColorValue
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  Container(
                    width: 100,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: !isReadSelected
                          ? const Color(0xFFD9D9D9)
                          : Colors.transparent,
                      border: Border.all(
                        color: isDarkMode ? Colors.white : Colors.black,
                        width: isDarkMode ? 1.5 : 1.0,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isReadSelected = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          "Unread",
                          style: TextStyle(
                              fontSize: 16,
                              color: (!isReadSelected)
                                  ? secondaryColorValue
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 170,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildContainer(isDarkMode),
                    const SizedBox(
                      height: 20,
                    ),
                    buildContainer(isDarkMode),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Container buildContainer(bool isDarkMode) {
    return Container(
      width: Get.width - 48,
      height: 78,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: isDarkMode ? Colors.white : Colors.black),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: ListTile(
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Text(
                  "3 sec ago",
                  style: TextStyle(
                      color: isDarkMode
                          ? Colors.white.withOpacity(0.7)
                          : Colors.black),
                ),
              ),
            ],
          ),
          horizontalTitleGap: 0,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          titleAlignment: ListTileTitleAlignment.top,
          // isThreeLine: true,
          title: Row(
            children: [
              Expanded(
                child: Text(
                  "Where do you see yourself in the next ages.",
                  style: TextStyle(
                      fontSize: 16,
                      color: isDarkMode ? Colors.white : Colors.black),
                ),
              ),
            ],
          ),
          leading: const CircleAvatar(
            radius: 50,
          ),
        ),
      ),
    );
  }
}
