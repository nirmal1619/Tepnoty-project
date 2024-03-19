import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/Screen%20state/dataset_state.dart';
import 'package:untitled2/Screens/Fourth%20Row/feedback_screen.dart';

class DataSetScreen extends StatelessWidget {
  DataSetScreen({super.key});

  final String text =
      "It is the collection of data that is used to train the chatbot.Train the chatbot in theway you want it to respond to people";

  final DataSetState dataState = Get.put(DataSetState());

  @override
  Widget build(BuildContext context) {
    RxInt currentPage = dataState.currentPage;
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () => dataState.nextPage(),
        child: Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 45),
          child: nextButtonContainer(),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (currentPage == 0) {
              Get.back();
            }
            dataState.lastPage();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => FeedbackScreen());
              },
              icon: Icon(Icons.forward))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => middleContainer(currentPage.toInt())),
              Obx(
                () => currentPage == 1
                    ? buttonContainer()
                    : const SizedBox(
                        height: 50,
                      ),
              ),
              const SizedBox(
                height: 40,
              ),
              Obx(() => pageIndicatorContainer(currentPage))
            ],
          ),
        ),
      ),
    );
  }

  Container nextButtonContainer() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 59,
        height: 59,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: secondaryColorValue,
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
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

  Container buttonContainer() {
    return Container(
      height: 50,
      width: 150, // Set height to 150
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), // Rounded edges with radius 12
        gradient: const LinearGradient(
          colors: [Color(0xFF904CEC), Color(0xFFCE7EF3)], // Gradient colors
        ),
        border: Border.all(color: Colors.white), // Border color white
      ),
      child: const Center(
        child: Text(
          "Upload",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
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
              dataState.images[index],
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dataState.headerText[index],
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
              dataState.subText[dataState.currentPage.toInt()],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Color(0xFFEC7EFF)),
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
