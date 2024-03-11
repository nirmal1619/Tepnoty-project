import 'package:flutter/material.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';

class StackDesign extends StatelessWidget {
  const StackDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SCurvedConatiner(
          containerHeight: 301,
          containerWidth: 428,
          useChild: false,
        ),
        BubbleContainer(),
      ],
    );
  }
}

class StackDesign2 extends StatelessWidget {
  const StackDesign2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        S2CurvedConatiner(),
        BubbleContainer(),
      ],
    );
  }
}