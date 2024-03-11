import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/Screens/Fifth%20row/Fourth%20Row/history_screen.dart';
import 'package:untitled2/Screens/Fifth%20row/Fourth%20Row/notification_screen.dart';
import 'package:untitled2/widgets/custom_drawer.dart';

import '../../../custom Icons/bell_icon.dart';
import '../../../custom container/stack_desgine.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 1;
  void updateCard(int index) {
    selectedIndex = index;
    setState(() {});
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(
                onPressed: () {},
                child: TextButton(
                  onPressed: () {
                    Get.to(() => NotificationScreen());
                  },
                  child: Text("Next"),
                ))
          ],
        ),
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const StackDesign2(),
                  Positioned(
                    top: 25,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(builder: (context) {
                          return IconButton(
                              //drawer
                              onPressed: () {
                                _scaffoldKey.currentState?.openDrawer();
                              },
                              icon: const Icon(Icons.menu));
                        }),
                        const BellNotificationDesign(),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: -5,
                    right: -5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: const TextStyle(fontSize: 16)
                                .copyWith(color: const Color(0xFFD9D9D9)),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text("Mani Kumar Pokala",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700)),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 48,
                            width: Get.width - 54,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Search here',
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFF6E6E6E),
                                ), // Icon for search
                              ),
                            ),
                          ),
                          const SizedBox(height: 35), // Adjusted SizedBox
                          Container(
                            height: 173,
                            margin: const EdgeInsets.symmetric(horizontal: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: const Color(0xFF666666)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    "Upgrade Program",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Unlock your Ai chatBot and get all the premium features",
                                          style: const TextStyle()
                                              .copyWith(color: Colors.white60),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ),
                                      const SizedBox(
                                          width:
                                              10), // Added SizedBox for spacing
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          // borderRadius: BorderRadius.circular(12),
                                          shape: BoxShape.circle,
                                          color: Colors
                                              .blue, // You can change the color
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                      height: 10), // Added SizedBox for spacing
                                  Container(
                                    width: 138,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.white),
                                      gradient: const LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color(0xFF8B4AE4),
                                          Color(0xFFCE7EF3)
                                        ],
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Upgrade Plan",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          SizedBox(
                            width: Get.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Categories",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "See all",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                cards(110, 1, Icons.mic_none_rounded, "Voice"),
                                cards(110, 2, Icons.videocam_outlined, "Video"),
                                cards(110, 3, Icons.chat, "Chat"),
                                cards(110, 4, Icons.call, "Audio"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildPositionContainer(5, 20, 1),
                              buildPositionContainer(5, 10, 2),
                              buildPositionContainer(5, 10, 3),
                              buildPositionContainer(5, 10, 4),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.zero,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "History",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "See more",
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Photography and hiking sound awesome !",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "As for me ,I love exploring the vast world of",
                                      style: const TextStyle(fontSize: 12)
                                          .copyWith(
                                              color: const Color(0xFFD9D9D9)),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                          // Added SizedBox to create 50 pixels of space
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  Container buildPositionContainer(double h, double w, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: h,
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: selectedIndex == index ? primaryColorValue : Colors.grey,
      ),
    );
  }

  Container cards(double cardHeight, cradIndex, IconData icon, String text) {
    bool isSelected = selectedIndex == cradIndex;
    return Container(
      width: 206.86, // Width of each card
      height: isSelected ? 140 : cardHeight, // Height of each card
      margin: const EdgeInsets.only(right: 10), // Adjust spacing between cards
      decoration: BoxDecoration(
        color: secondaryColorValue, // Adjust card color as needed
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: ListTile(
        onTap: () {
          updateCard(cradIndex);
          setState(() {});
        },
        horizontalTitleGap: 0,
        // titleAlignment: ListTileTitleAlignment.top,
        title: Padding(
          padding: isSelected
              ? const EdgeInsets.only(right: 250, top: 25)
              : const EdgeInsets.only(right: 250, top: 15),
          child: Icon(
            icon,
            size: 23,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          text,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500)
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
