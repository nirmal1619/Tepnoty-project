import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/explore_screen3.dart';

class ExploreCategories extends StatefulWidget {
  const ExploreCategories({super.key});

  @override
  State<ExploreCategories> createState() => _ExploreCategoriesState();
}

class _ExploreCategoriesState extends State<ExploreCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nature"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ExploreScreen3());
              },
              icon: Icon(Icons.arrow_forward)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: 9.0,
                // mainAxisSpacing: 9.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    width: 100.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(0.r)),
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
