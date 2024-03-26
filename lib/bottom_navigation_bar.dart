import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/search_screen.dart';
import 'package:untitled2/Screens/Seven%20Row/screen/ninth%20row/profile_view.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/bottom_sheet_container.dart';
import 'package:untitled2/widgets/custom_drawer.dart';
import 'package:untitled2/Screens/Fourth%20Row/home_screen.dart';

import 'Screens/Eighth Row/explore/explore_video.dart';
import 'Screen state/navigation_state.dart';

class NavigationBarScreen extends StatelessWidget {
  NavigationBarScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  openSheet() {
    Get.bottomSheet(
        enterBottomSheetDuration: Duration(milliseconds: 500),
        enableDrag: false,
        barrierColor: Colors.transparent,
        elevation: 0,
        BottomSheetContainer(
          onAdPress: () {},
          onPostPress: () {},
          onRealPress: () {},
        ));
  }

  @override
  Widget build(BuildContext context) {
    final getController = Get.put(NavigationController());

    final screens = [
      HomeScreen(
        openDrawerCallback: () {
          openDrawer();
        },
      ),
      SearchScreen(),
      ProfileViewScreen(
        openBottomSheet: () {
          openSheet();
        },
      ),
      ExploreVideo(),
      ProfileViewScreen(
        openBottomSheet: () {
          openSheet();
        },
      ),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _scaffoldKey, // Assign the GlobalKey to the Scaffold
      // appBar: AppBar(
      //
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: openDrawer, // Call the openDrawer function on onPressed
      //   ),
      // ),
      drawer: CustomDrawer(),

      body: Obx(() {
        return screens[getController.selectedIndex.value];
      }),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.white.withOpacity(0),
          iconTheme: MaterialStatePropertyAll(
            IconThemeData(size: 5.w),
          ),
          labelTextStyle: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                      color: Colors.white.withOpacity(0.7),
                      blurRadius: 5.r,
                      offset: Offset(0.h, 4.h),
                    ),
                  ],
                );
              }
              return TextStyle(color: Colors.white, fontSize: 12.sp);
            },
          ),
        ),
        child: Obx(
          () => NavigationBar(
            height: 61.h,
            backgroundColor: secondaryColorValue,
            selectedIndex: getController.selectedIndex.value,
            onDestinationSelected: (int index) {
              getController.selectedIndex.value = index;
            },
            destinations: [
              NavigationDestination(
                icon: navigationIcon(Icons.home_outlined, false),
                selectedIcon: navigationIcon(Icons.home_outlined, true),
                label: 'Home',
              ),
              NavigationDestination(
                icon: navigationIcon(Icons.search_outlined, false),
                selectedIcon: navigationIcon(Icons.search_outlined, true),
                label: 'Search',
              ),
              NavigationDestination(
                icon: navigationIcon(Icons.add_circle_outline, false),
                selectedIcon: navigationIcon(Icons.add_circle_outline, true),
                label: 'Add',
              ),
              NavigationDestination(
                icon: navigationIcon(Icons.play_circle_fill_rounded, false),
                selectedIcon:
                    navigationIcon(Icons.play_circle_fill_rounded, true),
                label: 'Explore',
              ),
              NavigationDestination(
                icon: navigationIcon(Icons.account_circle_outlined, false),
                selectedIcon:
                    navigationIcon(Icons.account_circle_outlined, true),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding navigationIcon(IconData iconData, bool isSelected) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: Icon(
        iconData,
        size: 25.w,
        color: isSelected ? Colors.black : Colors.white,
        shadows: isSelected
            ? [
                Shadow(
                  color: Colors.white.withOpacity(0.7),
                  blurRadius: 7.sp,
                  offset: Offset(0.h, 4.h),
                ),
              ]
            : [],
      ),
    );
  }
}
