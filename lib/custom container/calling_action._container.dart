import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../constant/colors_value.dart';

class CallingAction extends StatelessWidget {
  const CallingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 428.w,
      decoration: const BoxDecoration(
        color: primaryColorValue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.volume_up_sharp,
              size: 24.w,
            ),
            onPressed: () {
              // Add functionality for speaker button
            },
          ),
          IconButton(
            icon: Icon(
              Icons.mic_off_outlined,
              size: 24.w,
            ),
            onPressed: () {
              // Add functionality for mic button
            },
          ),
          IconButton(
            icon: Icon(
              Icons.videocam,
              size: 24.w,
            ),
            onPressed: () {
              // Add functionality for call button
            },
          ),
          Container(
            height: 48.h,
            width: 48.w,
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
