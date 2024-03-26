import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screen%20state/dataset_state.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chat_screen.dart';

class FeedbackSubmitted extends StatelessWidget {
  FeedbackSubmitted({Key? key});

  final DataSetState dataState = Get.put(DataSetState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // leading: IconButton(
        //     onPressed: () {
        //       Get.back();
        //     },
        //     icon: Icon(Icons.arrow_back)),
        actions: [
          TextButton(
            onPressed: () {
              Get.to(() => ChatScreen());
            },
            child: Text("Next"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                StackDesign2(),
                Positioned(
                  top: 271.h,
                  right: 0,
                  left: 0, // Use .h for height
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 24.w), // Use .w for width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 130.h), // Use .h for height
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w), // Use .w for width
                          child: SizedBox(
                            height: 272.h, // Use .h for height
                            width: 272.w, // Use .w for width
                            child: Image.asset(
                              dataState.images[3],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.h, // Use .h for height
                          child: Text(dataState.headerText[3],
                              style: TextStyle(
                                  fontSize: 48,
                                  fontWeight:
                                      FontWeight.w500)), // Removed const
                        ),
                        SizedBox(
                          height: 35.h, // Use .h for height
                          child: Text(dataState.subText[3],
                              style: TextStyle(
                                  fontSize: 29,
                                  fontWeight:
                                      FontWeight.w400)), // Removed const
                        ),
                        SizedBox(height: 30.h), // Use .h for height
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 48.h, // Use .h for height
                              width: 270.w, // Use .w for width
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    12.r), // Use .r for radius
                                border: Border.all(
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                ),
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(139, 74, 228, 1),
                                  Color.fromRGBO(206, 126, 243, 1)
                                ]),
                              ),
                              child: Center(
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      fontSize: 16.sp, // Use .sp for font size
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
