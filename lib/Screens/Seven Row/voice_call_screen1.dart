import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/calling_action._container.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';
import 'package:untitled2/Screens/Seven%20Row/voice_call_screen2.dart';

class VoiceCallScreenFirst extends StatelessWidget {
  const VoiceCallScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => VoiceCallScreenSecond());
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SCurvedConatiner(
                containerHeight: 301,
                containerWidth: Get.width,
                useChild: false,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 114),
                  height: 232,
                  width: 232,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xFFB450FF), width: 4),
                  ),
                  child: const CircleAvatar(
                    radius: 116,
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage(""),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 150),
          const Text(
            "Manikumar Pokala",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
          const Text(
            "3:05",
            style: TextStyle(fontSize: 14),
          ),
          const Spacer(),
          const CallingAction(),
        ],
      ),
    );
  }
}
