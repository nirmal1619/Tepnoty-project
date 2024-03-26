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
        width: 428.w,
        height: 170.h,
        child: Stack(children: [
          Positioned(
            left: -181.w,
            top: -368.h,
            child: Container(
                height: 472.h,
                width: 518.w,
                decoration: BoxDecoration(
                  color: const Color(0XFFB450FF).withOpacity(0.2),
                  shape: BoxShape.circle,
                )),
          ),
          Positioned(
              left: 235.w,
              top: -226.h,
              child: Container(
                height: 398.h,
                width: 398.w,
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
