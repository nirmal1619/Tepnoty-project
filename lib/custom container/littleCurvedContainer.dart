import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LittleCurvedContainer extends StatelessWidget {
  const LittleCurvedContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: 428.w,
          height: 921.h,
          decoration: const BoxDecoration(
            color: Color(0xFF6E40E0),
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 115.h); // Starting point
    path.quadraticBezierTo(
      0,
      161.h,
      57.w,
      161.h,
    );
    path.lineTo(size.width.w - 70.w, 161.h);
    path.quadraticBezierTo(size.width - 25.w, 161.h, size.width, 210.h);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
