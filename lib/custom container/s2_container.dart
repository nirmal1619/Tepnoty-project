import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class S2CurvedConatiner extends StatelessWidget {
  const S2CurvedConatiner({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: 428.w,
          height: 926.h - 61.h,
          decoration: const BoxDecoration(
            color: const Color(0xFF6E40E0),
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 160.47); // Starting point
    path.quadraticBezierTo(
      32.5.w,
      245.48.h,
      181.62.w,
      245.48.h,
    );
    path.lineTo(265.69.w, 245.48.h);
    path.quadraticBezierTo(380.w, 245.48.h, size.width, 311.h);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
