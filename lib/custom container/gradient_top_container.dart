import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GradientTopContainer extends StatelessWidget {
  const GradientTopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      // clipper: MyCustomClipper(),
      child: Container(
        width: 428.w,
        height: 307.h,
        decoration: const BoxDecoration(
          boxShadow: [],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Colors.black, // Start color
              Color(0xFF9150EB), // End color
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  final double heightFactor;
  final double radiusFactor;
  final double widthFactor;

  MyCustomClipper(
      {this.heightFactor = 1.0,
      this.radiusFactor = 1.0,
      this.widthFactor = 1.0});

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(
        0, size.height * heightFactor); // Start from the bottom left corner
    path.quadraticBezierTo(
      0,
      size.height * heightFactor - (65 * radiusFactor),
      65 * widthFactor,
      size.height * heightFactor - (65 * radiusFactor),
    ); // Define the curve
    path.lineTo(size.width - (65 * widthFactor),
        size.height * heightFactor - (65 * radiusFactor));
    path.quadraticBezierTo(
        size.width,
        size.height * heightFactor - (65 * radiusFactor),
        size.width,
        size.height * heightFactor);
    path.lineTo(size.width, 0);
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
