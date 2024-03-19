import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screen%20state/homescreen_state.dart';
import 'package:untitled2/Screens/Fourth%20Row/notification_screen.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20Icons/bell_icon.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final cardController = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BellNotificationDesign(),
          )
        ],
      ),
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      drawerScrimColor: Colors.transparent,
      body: Column(
        children: [
          Stack(
            children: [
              StackDesign2(),
              // Positioned(
              //   top: 25.h,
              //   left: 0.w,
              //   right: 0.w,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   ),
              // ),
              Positioned(
                top: 94.h,
                left: 0.w,
                right: 0.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(fontSize: 16.sp)
                            .copyWith(color: Color(0xFFD9D9D9)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text("Mani Kumar Pokala",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        height: 48.h,
                        width: 380.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.r),
                            color: Colors.white),
                        child: TextField(
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
                      SizedBox(height: 40.h), // Adjusted SizedBox
                      Container(
                        height: 173.h,
                        width: 380.w,
                        margin: EdgeInsets.symmetric(horizontal: 0.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Color(0xFF666666)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Upgrade Program",
                                style: TextStyle(fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Unlock your Ai chatBot and get all the premium features",
                                      style: TextStyle(fontSize: 16.spMin)
                                          .copyWith(color: Colors.white60),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                  SizedBox(
                                      width:
                                          10.w), // Added SizedBox for spacing
                                  Container(
                                    width: 50.w,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(12),
                                      shape: BoxShape.circle,
                                      color: Colors
                                          .blue, // You can change the color
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 10.h), // Added SizedBox for spacing
                              Container(
                                width: 131.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(color: Colors.white),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF8B4AE4),
                                      Color(0xFFCE7EF3)
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Upgrade Plan",
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 380.h,
                        child: Row(

                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Categories",
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            cards(141.h, 1, Icons.mic_none_rounded, "Voice"),
                            cards(141.h, 2, Icons.videocam_outlined, "Video"),
                            cards(141.h, 3, Icons.chat, "Chat"),
                            cards(141.h, 4, Icons.call, "Audio"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildPositionContainer(5.h, 10.w, 1),
                          buildPositionContainer(5.h, 10.w, 2),
                          buildPositionContainer(5.h, 10.w, 3),
                          buildPositionContainer(5.h, 10.w, 4),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.zero,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "History",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See more",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          )
                        ],
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text(
                          "Photography and hiking sound awesome !",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        subtitle: Text(
                          "As for me, I love exploring the vast world of",
                          style: TextStyle(fontSize: 12.sp)
                              .copyWith(color: Color(0xFFD9D9D9)),
                        ),
                        trailing: IconButton(
                          color: Colors.white,
                          iconSize: 15.w,
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios),
                        ),
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
    );
  }

  AnimatedContainer buildPositionContainer(double h, double w, int index) {
    return AnimatedContainer(
      duration:
          Duration(milliseconds: 300), // Adjust animation duration as needed
      curve: Curves.easeInOut, // Adjust animation curve as needed
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      height: h.h,
      width: cardController.selectedCard == index ? 20.w : w.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardController.selectedCard == index
            ? primaryColorValue
            : Colors.grey,
      ),
    );
  }

  Container cards(double cardHeight, cradIndex, IconData icon, String text) {
    bool isSelected = cardController.selectedCard == cradIndex;
    return Container(
      width: 256.86.w, // Width of each card
      height: isSelected ? 151.h : cardHeight, // Height of each card
      margin: EdgeInsets.only(right: 10.w), // Adjust spacing between cards
      decoration: BoxDecoration(
        color: secondaryColorValue, // Adjust card color as needed
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: ListTile(
        onTap: () {
          cardController.updateCard(cradIndex);
          setState(() {});
        },
        horizontalTitleGap: 0,
        // titleAlignment: ListTileTitleAlignment.top,
        title: Padding(
          padding: isSelected
              ? EdgeInsets.only(right: 250.w, top: 25.h)
              : EdgeInsets.only(right: 250.w, top: 15.h),
          child: Icon(
            icon,
            size: 23.sp,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          text,
          style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500)
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
