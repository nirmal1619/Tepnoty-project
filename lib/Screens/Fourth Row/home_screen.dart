import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screen%20state/homescreen_state.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20Icons/bell_icon.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback openDrawerCallback; // Define a callback function
  HomeScreen({Key? key, required this.openDrawerCallback}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final cardController = Get.put(CardController());

  List<Map<String, dynamic>> iconTextList = [
    {"icon": Icons.mic_none_rounded, "text": "Voice"},
    {"icon": Icons.videocam_outlined, "text": "Video"},
    {"icon": Icons.chat, "text": "Chat"},
    {"icon": Icons.call, "text": "Audio"},
  ];

  FocusNode _focusMode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: widget.openDrawerCallback,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BellNotificationDesign(),
          )
        ],
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            StackDesign2(),
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
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     labelText: 'Enter something',
                    //     border: OutlineInputBorder(),
                    //   ),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter some text';
                    //     }
                    //     return null;
                    //   },
                    // ),


                    Container(
                      height: 48.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: Colors.white),
                      child: TextField(

                        scrollController: ScrollController(),
                        focusNode: _focusMode,


                        onTap: () {
                          _focusMode.requestFocus();
                        },
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
                                    width: 10.w), // Added SizedBox for spacing
                                Container(
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.circle,
                                    color: secondaryColorValue,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h), // Added SizedBox for spacing
                            Container(
                              width: 131.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(color: Colors.white),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xFF8B4AE4), Color(0xFFCE7EF3)],
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
                    // Container(
                    //   constraints:
                    //       BoxConstraints(minHeight: 141.h, maxHeight: 151.h),
                    //   // Provide a fixed height or use constraints
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: cardController.iconTextList.length,
                    //     itemBuilder: (context, index) {
                    //       final iconData = cardController.iconTextList[index]
                    //           ['icon'] as IconData;
                    //       final text = cardController.iconTextList[index]
                    //           ['text'] as String;
                    //       return SizedBox(
                    //         width: 256.86.w, // Width of each item
                    //         child: Obx(
                    //             () => animatedCard(index, iconData, text)),
                    //       );
                    //     },
                    //   ),
                    // ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                        () => Row(
                          children: cardController.iconTextList
                              .asMap()
                              .entries
                              .map((entry) {
                            int index = entry.key;
                            IconData icon = entry.value['icon'] as IconData;
                            String text = entry.value['text'] as String;
                            return animatedCard(index, icon, text);
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildPositionContainer(0),
                          buildPositionContainer(1),
                          buildPositionContainer(2),
                          buildPositionContainer(3),
                        ],
                      ),
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
      ),
    );
  }

  AnimatedContainer buildPositionContainer(int index) {
    return AnimatedContainer(
      duration:
          Duration(milliseconds: 300), // Adjust animation duration as needed
      curve: Curves.bounceInOut, // Adjust animation curve as needed
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      height: 5.h,
      width: cardController.selectedCard == index ? 20.w : 10.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardController.selectedCard == index
            ? primaryColorValue
            : Colors.grey,
      ),
    );
  }

  AnimatedContainer animatedCard(int cradIndex, IconData icon, String text) {
    return AnimatedContainer(
      duration:
          Duration(milliseconds: 300), // Adjust animation duration as needed
      curve: Curves.bounceInOut, // Adjust animation curve as needed
      width: 256.86.w, // Width of each card
      height: 0 == cradIndex
          ? 151.h
          : 141.h, // Height of each card based on selection
      margin: EdgeInsets.only(right: 10.w), // Adjust spacing between cards
      decoration: BoxDecoration(
        color: secondaryColorValue, // Adjust card color as needed
        borderRadius: BorderRadius.circular(15.r), // Rounded corners
      ),
      child: ListTile(
        onTap: () {
          cardController.updateCard(cradIndex);
          print(
              "${cardController.lastCard} ${cardController.selectedCard}  ${cradIndex}");
        },
        horizontalTitleGap: 0,
        // titleAlignment: ListTileTitleAlignment.top,
        title: Padding(
          padding: EdgeInsets.only(
              right: 250.w,
              top:
                  cardController.selectedCard.value == cradIndex ? 25.h : 20.h),
          child: Icon(
            icon,
            size:
                cardController.selectedCard.value == cradIndex ? 23.sp : 35.sp,
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
