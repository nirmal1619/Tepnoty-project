import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/explore_categories.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/explore_screen3.dart';
import 'package:untitled2/Screens/First%20Row/splash_screen.dart';
import 'package:untitled2/Screens/Fourth%20Row/chat_profile.dart';
import 'package:untitled2/Screens/Fourth%20Row/history_screen.dart';
import 'package:untitled2/Screens/Fourth%20Row/home_screen.dart';
import 'package:untitled2/Screens/Fourth%20Row/notification_screen.dart';
import 'package:untitled2/Screens/Fourth%20Row/user_profile.dart';
import 'package:untitled2/Screens/Second%20Row/create_account.dart';
import 'package:untitled2/Screens/Seven%20Row/contacts_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/edit_profile_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/help_center.dart';
import 'package:untitled2/Screens/Tenth%20Row/notification_setting.dart';
import 'package:untitled2/Screens/Tenth%20Row/setting_screen.dart';
import 'package:untitled2/Screens/Thired%20Row/login_opstion.dart';
import 'package:untitled2/Screens/eleventh%20Row/report_screen.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/all_message_request.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chat_screen.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chating_screen.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/message_request.dart';
import 'package:untitled2/bottom_navigation_bar.dart';
import 'package:untitled2/custom%20theme/custom_themes.dart';

import 'Screens/Second Row/registration_succesful.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: CustomTheme.darkMode,
            home: SettingScreen());
      },
    );
  }
}
