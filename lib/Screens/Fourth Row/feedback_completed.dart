import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screen%20state/dataset_state.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chat_screen.dart';

class FeedbackSubmitted extends StatelessWidget {
  FeedbackSubmitted({super.key});

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
                const StackDesign2(),
                Positioned(
                    top: 120,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 130),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: SizedBox(
                              height: 272,
                              width: 272,
                              child: Image.asset(
                                dataState.images[3],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: Text(dataState.headerText[3],
                                style: const TextStyle(
                                    fontSize: 48, fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(
                            height: 35,
                            child: Text(dataState.subText[3],
                                style: const TextStyle(
                                    fontSize: 29, fontWeight: FontWeight.w400)),
                          ),
                          const SizedBox(height: 30),
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
                                    "Continue",
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
