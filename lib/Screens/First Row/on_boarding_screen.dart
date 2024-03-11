import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screen%20state/onboarding_state.dart';
import 'package:untitled2/button/backward_button.dart';
import 'package:untitled2/button/forward_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/Screens/Second%20Row/create_account.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final String text =
      "It is the collection of data that is used to train the chatbot.Train the chatbot in theway you want it to respond to people";

  final OnboardingState onbordingState = Get.put(OnboardingState());

  @override
  Widget build(BuildContext context) {
    RxInt currentPage = onbordingState.onboardingPage;
    return Scaffold(
      // floatingActionButton: Row(
      //   children: [
      //     // BackWordButton(VoidCallback: () {}),
      //     GestureDetector(
      //       onTap: () => onbordingState.nextPage(),
      //       child: Padding(
      //           padding: const EdgeInsets.only(right: 5, bottom: 75),
      //           child: ForwardButton(onPressed: () {
      //             onbordingState.nextPage();
      //           })),
      //     ),
      //   ],
      // ),
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.arrow_back),
        // ),
        actions: [
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(CreateAccountScreen());
                },
                child: Text("Next"),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => middleContainer(currentPage.toInt())),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    currentPage > 0
                        ? GestureDetector(
                            onTap: () {
                              onbordingState.lastPage();
                            },
                            child: BackwardButton(),
                          )
                        : SizedBox(
                            height: 80,
                            width: 80,
                          ),
                    // ForwardButton(onPressed: () {}),

                    GestureDetector(
                      onTap: () {
                        onbordingState.nextPage();
                        print(currentPage);
                      },
                      child: ForwardButton(),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
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
      height: 10,
      color: Colors.transparent,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        index == 0 ? slideContainer() : dotContainer(),
        const SizedBox(
          width: 5,
        ),
        index.toInt() == 1 ? slideContainer() : dotContainer(),
        const SizedBox(
          width: 5,
        ),
        index.toInt() == 2 ? slideContainer() : dotContainer(),
      ]),
    );
  }

  Container dotContainer() {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4), // Border color white
      ),
    );
  }

  Container slideContainer() {
    return Container(
      height: 8,
      width: 30,
      decoration: BoxDecoration(
        color: secondaryColorValue,
        borderRadius: BorderRadius.circular(4), // Border color white
      ),
    );
  }

  SizedBox middleContainer(int index) {
    return SizedBox(
      height: 550,
      width: Get.width - 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width - 48,
            height: 400,
            child: Image.asset(
              onbordingState.onboardingStateImages[index],
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              onbordingState.onBoardingHeaderText[index],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              onbordingState
                  .onBoardingSubText[onbordingState.onboardingPage.toInt()],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Color(0xFFD9D9D9)),
            ),
          )
          // SizedBox(
          //   height: 15,
          // ),
        ],
      ),
      // decoration:
      //     BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
    );
  }
}
