
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/colors_value.dart';

class CallingAction extends StatelessWidget {
  const CallingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: Get.width,
      decoration: const BoxDecoration(
        color: primaryColorValue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.volume_up_sharp),
            onPressed: () {
              // Add functionality for speaker button
            },
          ),
          IconButton(
            icon: const Icon(Icons.mic_off_outlined),
            onPressed: () {
              // Add functionality for mic button
            },
          ),
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () {
              // Add functionality for call button
            },
          ),
          Container(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: const Icon(
              Icons.phone,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
