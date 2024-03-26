import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled2/Screens/Fourth%20Row/home_screen.dart';

import '../Screens/Eighth Row/explore/explore_video.dart';
import '../Screens/Tenth Row/setting_screen.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxBool isDrawerOpen = false.obs;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
