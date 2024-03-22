import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/constant/membership_plans_details.dart';
import 'package:untitled2/custom%20container/circuler_border_Container.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chat_screen.dart';

class UltraMemberShipPlan extends StatelessWidget {
  const UltraMemberShipPlan({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ChatScreen());
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Container(
        width: 428.w,
        height: 921.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade900, // Top color - deep purple
              Colors.deepPurple.shade100, // Bottom color - light deep purple
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 230.h,
                right: 0.w,
                child: CircularContainer(
                  width: 112.w,
                  height: 112.h,
                )),
            doubleCircle(),
            Positioned(
              top: 80.h,
              left: 0.w,
              right: 0.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi Mani",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Check our Tepnoty Membership Plans",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 75.h,
                  ),
                  Container(
                    height: 460.h,
                    width: 360.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w)
                                .copyWith(top: 30.h),
                            child: Container(
                              height: 55.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF8B4AE4), // Start color
                                    Color(
                                        0xFFCE7EF3), // End color, same as start color for a solid gradient
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.w,
                                ),
                              ),
                            )),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15.h,
                              ),
                              SizedBox(
                                child: Text(
                                  "Tepnoty",
                                  style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              SizedBox(
                                child: Text(
                                  plusUltraPlan,
                                  style: TextStyle(
                                    fontSize: 47.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              plansDetails(
                                  plansUpperText[1], plusPremiumLowerText[0]),
                              plansDetails(
                                  plansUpperText[1], plusPremiumLowerText[1]),
                              plansDetails(
                                  plansUpperText[1], plusPremiumLowerText[2]),

                              // Row(
                              //   children: [
                              //     Icon(Icons.check),
                              //     SizedBox(width: 10),
                              //
                              //     Text(" save 15%"),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.w, vertical: 20.h),
                          child: Text(
                            "For ${prices[2]} monthly",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 78.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      ),
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(139, 74, 228, 1),
                        Color.fromRGBO(206, 126, 243, 1)
                        // Color(0xFF8B4AE4),

                        // Color(0xFF8B4AE4),
                        // Color(0xFFCE7EF3),
                      ]),
                    ),
                    child: Center(
                      child: Text(
                        "Subscribe (${prices[2]})",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )
                  // Padding(
                  //   padding: EdgeInsets.all(8.0),

                  //   child: GradientButton(
                  //       callBackFunction: () {},
                  //       buttonName: "Subscribe (${prices[0]})"),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned doubleCircle() {
    return Positioned(
      top: 134.h,
      left: -80.w,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          CircularContainer(
            width: 225.w,
            height: 225.h,
          ),
          Positioned(
            child: CircularContainer(
              width: 164.w,
              height: 164.h,
            ),
          ),
        ],
      ),
    );
  }

  Padding plansDetails(String uperText, String lowerText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.check),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                uperText,
                style: TextStyle(height: 1.43.h, fontSize: 15.spMin),
              ),
              Text(
                lowerText,
                style: TextStyle(height: 1.43.h, fontSize: 15.spMin),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


/** Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade900, // Top color - deep purple
              Colors.deepPurple.shade100, // Bottom color - light deep purple
            ],
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
                bottom: 147,
                right: 0,
                child: CircularContainer(width: 112, height: 112)),
            doubleCircle(),
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hi Mani",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Check our Tepnoty Membership Plans",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Container(
                    height: 445,
                    width: Get.width - 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25)
                                .copyWith(top: 25),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF8B4AE4), // Start color
                                    Color(
                                        0xFFCE7EF3), // End color, same as start color for a solid gradient
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                            )),
                        const SizedBox(height: 10),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tepnoty",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                plusUltraPlan,
                                style: TextStyle(
                                  fontSize: 49,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                        plansDetails(plansUpperText[2], plusUltraLowerText[0]),
                        plansDetails(plansUpperText[2], plusUltraLowerText[1]),
                        plansDetails(plansUpperText[2], plusUltraLowerText[2]),

                        // Row(
                        //   children: [
                        //     Icon(Icons.check),
                        //     SizedBox(width: 10),
                        //
                        //     Text(" save 15%"),
                        //   ],
                        // ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text("For ${prices[2]} monthly"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GradientButton(
                        callBackFunction: () {},
                        buttonName: "Subscribe (${prices[0]})"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ) */