import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screen%20state/navigation_state.dart';
import 'package:untitled2/custom%20container/bottom_sheet_container.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/message_request.dart';

class ProfileViewScreen extends StatefulWidget {
  final VoidCallback? openBottomSheet;
  const ProfileViewScreen({Key? key, this.openBottomSheet}) : super(key: key);

  @override
  State<ProfileViewScreen> createState() => _ExploreScreen3State();
}

class _ExploreScreen3State extends State<ProfileViewScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (navigationController.selectedIndex == 2) {
        widget.openBottomSheet!();
      }
    });
  }

  final navigationController = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        forceMaterialTransparency: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => MessageRequest());
            },
            icon: Icon(Icons.arrow_forward),
          ),
          IconButton(
            onPressed: () {
              navigationController.selectedIndex.value = 2;
              widget.openBottomSheet!();
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              StackDesign2(),
              Positioned(
                top: 120.h,
                left: 0.w,
                right: 0.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(radius: 36.r),
                            ProfileTile(),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: AboutPart(),
                      ),
                      DefaultTabController(
                        length: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TabBar(
                              indicatorWeight: 2.w,
                              indicatorSize: TabBarIndicatorSize.tab,
                              tabs: [
                                Tab(
                                  icon: Icon(Icons.photo_library_outlined),
                                ),
                                Tab(
                                  icon: Icon(Icons.video_library),
                                ),
                                Tab(
                                  icon: Icon(Icons.bookmark),
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              child: SizedBox(
                                height: (Get.height - 340.h),
                                child: TabBarView(
                                  physics: PageScrollPhysics(),
                                  children: [
                                    buildScrollView(),
                                    buildScrollView(),
                                    buildScrollView()
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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

  SizedBox buildScrollView() {
    return SizedBox(
      width: 921.w,
      height: 428.h,
      child: GridView.builder(
        padding: EdgeInsets.only(top: 2.h, bottom: 80.h),
        physics: PageScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => Container(
          width: 215.w,
          height: 154.h,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 2.w,
              color: Colors.grey.shade400,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10.h),
        Row(
          children: [
            SizedBox(width: 20.w),
            Text(
              "ManiKumar Pokala",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Lexend",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 5.w),
              child: Text(
                "He/Him",
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: StarEditIcon(),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text("designsby_Mani"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 0),
              child: Container(
                height: 16.h,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(139, 74, 228, 1),
                      Color.fromRGBO(206, 126, 243, 1)
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Request To Message",
                    style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AboutPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'UI/UX Designer',
          style: TextStyle(
            fontSize: 12.sp,
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text(
            'Find joy in every moment, like colors in a painting. Life\'s beauty is in its simple details.',
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class StarEditIcon extends StatelessWidget {
  const StarEditIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 22.h,
          width: 22.w,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.w,
              color: Colors.white,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF8B4AE4),
                Color(0xFFCE7EF),
              ],
            ),
            shape: BoxShape.circle,
          ),
        ),
        Positioned(
          top: 5.h,
          right: 10.w,
          child: Icon(
            Icons.pentagon_outlined,
            weight: 15.sp,
            opticalSize: 15.sp,
            size: 7.sp,
            color: Color(0xFFFFE713),
          ),
        ),
        Positioned(
          top: 10.h,
          bottom: 15.h,
          right: 4.w,
          child: Icon(
            Icons.mode_edit_outline_outlined,
            size: 7.sp,
            color: Color(0xFFFFE713),
          ),
        ),
      ],
    );
  }
}
