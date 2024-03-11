import 'package:flutter/material.dart';
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
          width: Get.width,
          height: Get.height,
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
    path.lineTo(0, 105); // Starting point
    path.quadraticBezierTo(
      0,
      151,
      57,
      151,
    );
    path.lineTo(size.width - 80, 151);
    path.quadraticBezierTo(size.width - 35, 151, size.width, 180);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
