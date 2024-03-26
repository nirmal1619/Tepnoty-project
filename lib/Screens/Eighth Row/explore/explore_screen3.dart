import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/search_screen.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';

class ExploreScreen3 extends StatefulWidget {
  const ExploreScreen3({Key? key}) : super(key: key);

  @override
  State<ExploreScreen3> createState() => _ExploreScreen3State();
}

class _ExploreScreen3State extends State<ExploreScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 400.w,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 24.w,
            ),
            Text(
              "Manikumar Pokala",
              style: TextStyle(fontSize: 24.sp),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 40.sp,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => SearchScreen());
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              StackDesign2(),
              Positioned(
                top: 80.h,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 25.h),
                              child: CircleAvatar(radius: 36.r),
                            ),
                            SizedBox(width: 0.w),
                            Column(
                              children: [
                                Text(
                                  "32",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Posts",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "326",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "325",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 75.h),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 24.w),
                          containerButton("Message Request", () {}),
                          SizedBox(width: 24.w),
                          containerButton("Share Profile", () {})
                        ],
                      ),
                      SizedBox(height: 10.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 428.w,
                              height: 80.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) => Container(
                                  margin: EdgeInsets.only(
                                      left: 25.w, right: 12.w, bottom: 0.h),
                                  width: 69.w,
                                  height: 69.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // Add a Divider
                      SingleChildScrollView(
                        physics: PageScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              color: Colors.grey,
                              height: 1.h,
                            ),
                            // Container(
                            //   height: 2.h,
                            //   color: Colors.grey,
                            // ),

                            SizedBox(
                              width: 428.w,
                              height: 926.h,
                              child: GridView.builder(
                                padding: EdgeInsets.only(top: 0.h, left: 0),
                                physics: PageScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemCount: 10,
                                itemBuilder: (context, index) => Container(
                                  // width: 215.w,
                                  height: 154.h,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.rectangle,
                                      // borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        width: 1.w,
                                        color: Colors.grey.shade400,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Expanded(
                      //   child: GridView.builder(
                      //     gridDelegate:
                      //     SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 2,
                      //       crossAxisSpacing: 10,
                      //       mainAxisSpacing: 10,
                      //       childAspectRatio: 215 / 150,
                      //     ),
                      //     itemCount: 10,
                      //     itemBuilder: (context, index) {
                      //       return Container(
                      //         width: 215,
                      //         height: 150,
                      //         color: Colors.grey[300],
                      //         alignment: Alignment.center,
                      //         child: Text(
                      //           'Item $index',
                      //           style: TextStyle(fontSize: 20),
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
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

  GestureDetector containerButton(String buttonName, Function voidCallback) {
    return GestureDetector(
      onTap: () {
        voidCallback();
      },
      child: Container(
        height: 35.h,
        width: 135.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: const Color(0xFFD9D9D9)),
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            buttonName,
            style: TextStyle(color: Color(0xFFD9D9D9), fontSize: 14.spMin),
          ),
        ),
      ),
    );
  }
}
