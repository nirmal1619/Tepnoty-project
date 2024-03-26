import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screen%20state/onboarding_state.dart';
import 'package:untitled2/Screens/Second%20Row/create_account.dart';
import 'package:untitled2/button/backward_button.dart';
import 'package:untitled2/button/forward_button.dart';
import 'package:untitled2/constant/colors_value.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key});

  final String text =
      "It is the collection of data that is used to train the chatbot. Train the chatbot in the way you want it to respond to people";

  final OnboardingState onboardingState = Get.put(OnboardingState());

  @override
  Widget build(BuildContext context) {
    RxInt currentPage = onboardingState.onboardingPage;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Get.to(CreateAccountScreen());
            },
            child: Text("Next"),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 235.h), // Use .w for width
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => middleContainer(currentPage.toInt())),
              Obx(() => Column(children: [
                SizedBox(
                  height: 96.h, // Use .h for height
                ),
                Text(
                  onboardingState.onBoardingHeaderText[currentPage.value],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700), // Use .sp for font size
                ),
                SizedBox(
                  height: 20.h, // Use .h for height
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w), // Use .w for width
                  child: Text(
                    onboardingState
                        .onBoardingSubText[onboardingState.onboardingPage.toInt()],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp, // Use .sp for font size
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                )
              ],),

              ),
             Obx(()=>
              SizedBox(

                 height:  onboardingState.onboardingPage.value==1? 24.h: 0,

               ),
             ),
              Padding(
                padding:  EdgeInsets.only(  top:   48.h,left: 24.w,right: 24.w),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      currentPage > 0
                          ? GestureDetector(
                              onTap: () {
                                onboardingState.lastPage();
                              },
                              child: BackwardButton(),
                            )
                          : SizedBox(
                              height: 80.h, // Use .h for height
                              width: 80.w, // Use .w for width
                            ),
                      GestureDetector(
                        onTap: () {
                          onboardingState.nextPage();
                          if (currentPage.value == 2) {
                            Timer(Duration(seconds: 3), () {
                              Get.to(CreateAccountScreen());
                            });
                          }
                        },
                        child: ForwardButton(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h, // Use .h for height
              ),
              Obx(() => pageIndicatorContainer(currentPage))
            ],
          ),
        ),
      ),
    );
  }

  Container pageIndicatorContainer(RxInt index) {
    return Container(
      height: 10.h, // Use .h for height
      color: Colors.transparent,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        index == 0 ? slideContainer() : dotContainer(),
        SizedBox(
          width: 5.w, // Use .w for width
        ),
        index.toInt() == 1 ? slideContainer() : dotContainer(),
        SizedBox(
          width: 5.w, // Use .w for width
        ),
        index.toInt() == 2 ? slideContainer() : dotContainer(),
      ]),
    );
  }

  Container dotContainer() {
    return Container(
      height: 8.h, // Use .h for height
      width: 8.w, // Use .w for width
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4.r), // Use .r for radius
      ),
    );
  }

  Container slideContainer() {
    return Container(
      height: 8.h, // Use .h for height
      width: 30.w, // Use .w for width
      decoration: BoxDecoration(
        color: secondaryColorValue,
        borderRadius: BorderRadius.circular(4.r), // Use .r for radius
      ),
    );
  }

  SizedBox middleContainer(int index) {
    return SizedBox(
      height: 260.h, // Use .h for height
      width: 380.w, // Use .w for width
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 380.w, // Use .w for width
            height: 260.h, // Use .h for height
            child: Image.asset(
              onboardingState.onboardingStateImages[index],
              fit: BoxFit.contain,
            ),
          ),

        ],
      ),
    );
  }
}
