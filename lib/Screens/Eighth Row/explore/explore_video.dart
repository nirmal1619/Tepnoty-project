import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/explore_categories.dart';

class ExploreVideo extends StatefulWidget {
  const ExploreVideo({super.key});

  @override
  State<ExploreVideo> createState() => _ExploreVideoState();
}

class _ExploreVideoState extends State<ExploreVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 4,
        foregroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ExploreCategories());
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const PageScrollPhysics(),
        itemCount: 10, // Replace 10 with your actual item count
        padding: EdgeInsets.only(bottom: 0), // Extend body to app bar
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        },
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Stack(
      // alignment: AlignmentDirectional.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 0.h),
          height: 926.h - 61.h,
          width: 428.w,
          color:
              index % 2 == 0 ? Color.fromARGB(255, 119, 119, 119) : Colors.red,
          child: Center(
            child: Text(
              "$index",
              style: TextStyle(fontSize: 24.sp),
            ),
          ),
          // Add your child widget here if needed
        ),
        Positioned(
            left: 428 * 0.45.w,
            top: 926 * 0.55.h,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle_outline,
              ),
            )),
        Positioned(
            left: 428 * 0.85.w,
            top: 926 * 0.65.h,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
                const CircleAvatar()
              ],
            )),
        Positioned(
            left: 428 * 0.05.w,
            top: 926 * 0.82.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Tittle/Nature",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    button(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem Lorem Ipsum is a type of",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xFFE6E6E6).withOpacity(1),
                          fontSize: 12),
                    ),
                    // Spacer()
                  ],
                )
              ],
            )),
      ],
    );
  }
}

button() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 110.w,
      height: 20.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Center(
          child: Text(
            "Request To Message",
            style: TextStyle(fontSize: 8.spMin, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: LinearGradient(
          colors: [Color(0xFF8B4AE4), Color(0xFFCE7EF3)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        border: Border.all(color: Colors.white, width: 1.3.w),
      ),
    ),
  );
}
