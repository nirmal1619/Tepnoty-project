import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/Screen%20state/dataset_state.dart';
import 'package:untitled2/Screens/Fourth%20Row/feedback_screen.dart';

class DataSetScreen extends StatelessWidget {
  DataSetScreen({Key? key});

  final String text =
      "It is the collection of data that is used to train the chatbot.Train the chatbot in the way you want it to respond to people";

  final DataSetState dataState = Get.put(DataSetState());

  @override
  Widget build(BuildContext context) {
    RxInt currentPage = dataState.currentPage;
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () => dataState.nextPage(),
        child: Padding(
          padding: EdgeInsets.only(
              right: 5.w, bottom: 50.h), // Use .w and .h for width and height
          child: nextButtonContainer(),
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (currentPage == 0) {
              Get.back();
            }
            dataState.lastPage();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => FeedbackScreen());
            },
            icon: Icon(Icons.forward),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w).copyWith(top: 97.h), // Use .w for width
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => middleContainer(currentPage.toInt())),

              Obx(() => Column(
                    children: [
                      // Use .h for height
                      Padding(
                        padding: EdgeInsets.only(top: 22.h), // Use .w for width
                        child: Text(
                          dataState.headerText[currentPage.value],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      //
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w), // Use .w for width
                        child: Text(
                          dataState.subText[dataState.currentPage.value],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp, color: Color(0xFFEC7EFF)),
                        ),
                      ),
                    ],
                  )),

              Obx(
                () => currentPage == 1
                    ? buttonContainer()
                    : currentPage == 2
                        ? SizedBox(height: 40.h)
                        : SizedBox(height: 50.h), // Use .h for height
              ),
              SizedBox(height: 127.h - 50.h), // Use .h for height
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pageIndicatorContainer(0, currentPage.value),
                      pageIndicatorContainer(1, currentPage.value),
                      pageIndicatorContainer(2, currentPage.value),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Container nextButtonContainer() {
    return Container(
      width: 80.w, // Use .w for width
      height: 80.h, // Use .h for height
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Container(
        margin: EdgeInsets.all(10.w), // Use .w for width
        width: 59.w, // Use .w for width
        height: 59.h, // Use .h for height
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: secondaryColorValue,
        ),
        child: Center(
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Container pageIndicatorContainer(int Currentpage, int selectedPage) {
    bool isSelected = Currentpage == selectedPage;
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 8.h, // Use .h for height
      width: isSelected ? 30.w : 8.w, // Use .w for width
      decoration: BoxDecoration(
        color: isSelected ? secondaryColorValue : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4.r), // Use .r for radius
      ),
    );
  }

  Container buttonContainer() {
    return Container(
      margin: EdgeInsets.only(top: 38, bottom: 4),
      height: 50.h, // Use .h for height
      width: 150.w, // Use .w for width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r), // Use .r for radius
        gradient: LinearGradient(
          colors: [Color(0xFF904CEC), Color(0xFFCE7EF3)],
        ),
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Text(
          "Upload",
          style: TextStyle(
            fontSize: 18.sp, // Use .sp for font size
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  SizedBox middleContainer(int index) {
    return SizedBox(
      width: 380.w, // Use .w for width
      height: 462.h, // Use .h for height
      child: Image.asset(
        dataState.images[index],
        fit: BoxFit.cover,
      ),
    );
  }
}
