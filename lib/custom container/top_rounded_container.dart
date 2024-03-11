import 'package:flutter/material.dart';
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
          width: Get.width,
          height: Get.height,
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
      32.5,
      235.48,
      181.62,
      235.48,
    );
    path.lineTo(249.69, 235.48);
    path.quadraticBezierTo(380, 235.48, size.width, 301);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
