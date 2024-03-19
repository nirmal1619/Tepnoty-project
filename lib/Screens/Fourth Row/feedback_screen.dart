import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Fourth%20Row/feedback_completed.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = Get.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(() => FeedbackSubmitted());
                },
                child: Text("Next"),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const StackDesign2(),
                Positioned(
                    top: 250,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Feedback",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 70,
                            width: screenWidth - 48,
                            child: const Text(
                              maxLines: 2,
                              "We would love to know what you want to see in the future and what is not working right now.",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "How can we make Tepnoty even better?",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: screenWidth - 50,
                            height: 129,
                            decoration: BoxDecoration(
                              color: const Color(0xFFC476F1).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Your feedback here...',
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
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
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 48,
                                width: 270,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color:
                                        const Color.fromRGBO(217, 217, 217, 1),
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
                                    "Send",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
