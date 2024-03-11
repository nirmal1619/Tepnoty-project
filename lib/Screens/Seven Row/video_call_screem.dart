import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/calling_action._container.dart';
import 'package:untitled2/Screens/Seven%20Row/voice_call_screen1.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110), // Specify preferred height
        child: AppBar(
          backgroundColor: Colors.transparent, // Make app bar transparent
          elevation: 0, // Remove shadow
          automaticallyImplyLeading: false, // Don't show back button
          flexibleSpace: Container(
            height: 110,
            decoration: BoxDecoration(
              color: primaryColorValue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Spacer(),
                Text(
                  "3:05",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Add functionality for the camera rotate button
                    Get.to(() => VoiceCallScreenFirst());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.flip_camera_ios_outlined),
                  onPressed: () {
                    // Add functionality for the camera rotate button
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Colors.white,
          ),
          Positioned(
            top: 130,
            left: Get.width - 120,
            child: const SizedBox(
              height: 140,
              width: 100,
              child: Card(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: CallingAction(),
          ),
        ],
      ),
    );
  }
}
