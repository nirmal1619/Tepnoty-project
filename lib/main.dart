import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:untitled2/Screens/Second%20Row/create_account.dart';
import 'package:untitled2/Screens/eleventh%20Row/TestScreen.dart';
import 'package:untitled2/bottom_navigation_bar.dart';
import 'package:untitled2/custom%20theme/custom_themes.dart';

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
            home: CreateAccountScreen());
      },
    );
  }
}
