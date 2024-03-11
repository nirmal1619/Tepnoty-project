import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'package:untitled2/constant/colors_value.dart';

class BackwardButton extends StatelessWidget {
  const BackwardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white),
          ),
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 59,
            height: 59,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: secondaryColorValue,
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
        CustomPaint(
          painter: CustomPainter1(),
          child: Container(
            height: 80,
            width: 80,
          ),
        ),
      ],
    ));
  }
}

// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
class CustomPainter1 extends CustomPainter {
  final double visibleFraction;

  CustomPainter1({this.visibleFraction = 0.5});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = secondaryColorValue
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    // Calculate the angle based on the visible fraction
    final double startAngle = 3 * (math.pi / 2) * visibleFraction;
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
