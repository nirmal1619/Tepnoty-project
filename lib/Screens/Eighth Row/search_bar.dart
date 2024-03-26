import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Seven%20Row/screen/ninth%20row/profile_view.dart';
import 'package:untitled2/Screens/ninth%20row/profile_view.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ProfileViewScreen());
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            // Wrapping with Center widget to position in the middle
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0.w),
              width: 380.w,
              height: 48.h,
              decoration: BoxDecoration(
                border: Border.all(width: 1.w, color: Colors.grey),
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20.sp,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 250.h),
          Icon(Icons.search, size: 161.w, color: Color(0XFFC9C9C9)),
          const SizedBox(height: 16),
          Container(
            width: 218.w,
            child: Text(
              textAlign: TextAlign.center,
              'Search what do you want to explore',
              style: TextStyle(fontSize: 16.sp, color: Color(0XFFC9C9C9)),
            ),
          ),
        ],
      ),
    );
  }
}
