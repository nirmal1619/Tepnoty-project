import 'package:flutter/material.dart';
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
      ),
    );
  }

  Positioned doubleCircle() {
    return const Positioned(
      top: 134,
      left: -80,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          CircularContainer(
            width: 225,
            height: 225,
          ),
          Positioned(
            child: CircularContainer(
              width: 164,
              height: 164,
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
              Text(uperText),
              Text(lowerText),
            ],
          ),
        ],
      ),
    );
  }
}
