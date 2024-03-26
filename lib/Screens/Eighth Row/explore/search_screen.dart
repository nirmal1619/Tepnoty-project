import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/tile_container.dart';
import 'package:untitled2/Screens/Eighth%20Row/search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => SearchBarScreen());
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => SearchBarScreen());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, bottom: 4.h),
                    child: Text(
                      "Explore",
                      style: TextStyle(fontSize: 24.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: SizedBox(
                      height: 205.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => TileContainer(),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0.h),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Categories",
                            style: TextStyle(fontSize: 24.sp),
                          ),
                        ).paddingAll(0),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See more",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ).paddingZero,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.amber,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              softWrap: true,
                              "Nature",
                              style: TextStyle(
                                  color: secondaryColorValue,
                                  fontSize: 15.spMin),
                            ).marginZero.paddingZero,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Love",
                              style: TextStyle(
                                  color: Color(0xFFD9D9D9), fontSize: 15.spMin),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Emotional",
                              style: TextStyle(
                                  color: Color(0xFFD9D9D9), fontSize: 15.spMin),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Funny",
                              style: TextStyle(
                                  color: Color(0xFFD9D9D9), fontSize: 15.spMin),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pets",
                              style: TextStyle(
                                  color: Color(0xFFD9D9D9), fontSize: 15.spMin),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 1,
                    color: Color(0xFFD9D9D9),
                    width: 428.w,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 9.0.w,
                mainAxisSpacing: 9.0.h,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    width: 100.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.r)),
                  );
                },
                childCount: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
