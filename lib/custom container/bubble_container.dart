import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BubbleContainer extends StatelessWidget {
  const BubbleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: Get.width,
        height: 170.h,
        child: Stack(children: [
          Positioned(
            left: -181,
            top: -368,
            child: Container(
                height: 472,
                width: 518,
                decoration: BoxDecoration(
                  color: const Color(0XFFB450FF).withOpacity(0.2),
                  shape: BoxShape.circle,
                )),
          ),
          Positioned(
              left: 235,
              top: -226,
              child: Container(
                height: 398,
                width: 398,
                decoration: BoxDecoration(
                  color: const Color(0XFFB450FF).withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
              )),
        ]),
      ),
    );
  }
}
