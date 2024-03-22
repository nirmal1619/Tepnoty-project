import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularContainer extends StatelessWidget {
  final double width;
  final double height;

  const CircularContainer({
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: Colors.white.withOpacity(0.5),
            width: 4.w,
            style: BorderStyle.solid),
      ),
    );
  }
}
