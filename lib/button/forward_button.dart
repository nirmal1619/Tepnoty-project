import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dart:math' as math;

import 'package:untitled2/constant/colors_value.dart';

class ForwardButton extends StatelessWidget {
  const ForwardButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w, // Use .w for width
      height: 80.h, // Use .h for height
      child: Stack(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
            ),
            child: Container(
              margin: EdgeInsets.all(10.w), // Use .w for width
              width: 59.w,
              height: 59.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColorValue,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          CustomPaint(
            painter: CustomPainter1(),
            child: Container(
              height: 80.h,
              width: 80.w,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPainter1 extends CustomPainter {
  final double visibleFraction;

  CustomPainter1({this.visibleFraction = 0.5});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = secondaryColorValue
      ..strokeWidth = 2.9.w
      ..style = PaintingStyle.stroke;

    // Calculate the angle based on the visible fraction
    final double startAngle = 6 * (math.pi / 2) * visibleFraction;
    final double sweepAngle = 3 * (math.pi / 2) * visibleFraction;

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    bool useCenter = false; // Whether to connect the arc with the center

    // Clip the canvas to only draw within a certain area
    canvas.clipRect(rect);

    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // Return true if your painting should repaint
  }
}
