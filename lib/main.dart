import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/First%20Row/on_boarding_screen.dart';
import 'package:untitled2/custom%20theme/custom_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: CustomTheme.darkMode,
        home: OnBoardingScreen());
  }
}
