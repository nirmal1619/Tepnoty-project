import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomClipperBottomContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 50);

    path.quadraticBezierTo(size.width, 0, size.width - 50, 0);
    path.lineTo(50, 0);
    path.quadraticBezierTo(0, 0, 0, 50);

    path.close();
    // return path;.height, 0, size.height - 200); // Add a quadratic bezier curve to create a custom shape
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BottomContainer extends StatelessWidget {
  final double containerHeight;

  const BottomContainer({super.key, required this.containerHeight});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 681,
      // width: 408,
      height: containerHeight,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 5,
            spreadRadius: 2,
            offset:
                const Offset(0, -2), // Change the y-offset to negative value
          ),
        ],
      ),
    );
  }
}
