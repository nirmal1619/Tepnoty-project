import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/explore_screen.dart';
import 'package:untitled2/Screens/Fourth%20Row/home_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/setting_screen.dart';
import 'package:untitled2/constant/colors_value.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final getController = Get.put(NavigationController());
    return Scaffold(
      body: Obx(() {
        final getController = Get.find<NavigationController>();
        return getController.screens[getController.selectedIndex.value];
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

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final screens = [HomeScreen(), SearchBar(), ExploreScreen(), SettingScreen()];
}
