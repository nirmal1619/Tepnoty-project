import 'package:flutter/material.dart';
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
        width: Get.width,
        height: 307,
        decoration:  const BoxDecoration(

          boxShadow: [

          ],
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
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height); // Start from the bottom left corner
    path.quadraticBezierTo(
        0,
        size.height - 65,
        65,
        size.height-65
    ); // Define the curve
    path.lineTo(size.width-65, size.height-65);
    path.quadraticBezierTo(
        size.width,
        size.height - 65,
        size.width,
        size.height
    );
    path.lineTo(size.width, 0);
    //
    // Line to the top right corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


