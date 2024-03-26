import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Fourth%20Row/feedback_completed.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: TextButton(
              onPressed: () {
                Get.to(() => FeedbackSubmitted());
              },
              child: Text("Next"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const StackDesign2(),
                Positioned(
                  top: 278.h, // Use .h for height
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 24.w), // Use .w for width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Feedback",
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 20.h), // Use .h for height
                        SizedBox(
                          height: 70.h, // Use .h for height
                          width: 380.w, // Use .w for width
                          child: Text(
                            maxLines: 2,
                            "We would love to know what you want to see in the future and what is not working right now.",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xFF969696),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "How can we make Tepnoty even better?",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Container(
                          width: 380.w, // Use .w for width
                          height: 129.h, // Use .h for height
                          decoration: BoxDecoration(
                            color: const Color(0xFFC476F1).withOpacity(0.15),
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 10.w), // Use .w for width
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Let us know your thoughts...',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.sp,
                                ),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 48,
                              width: 270.w, // Use .w for width
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
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
                                  "Send",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
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
            Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom))
          ],
        ),
      ),
    );
  }
}
