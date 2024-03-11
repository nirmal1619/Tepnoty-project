import 'package:flutter/material.dart';

class SCurvedConatiner extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final bool useChild;

  const SCurvedConatiner(
      {super.key,
      required this.containerHeight,
      required this.containerWidth,
      required this.useChild});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: containerWidth,
          height:301,
          decoration:  const BoxDecoration(
            color: Color(0xFF6E40E0),
          ),
          child: useChild
              ? const Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your password",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          letterSpacing: 0.3,
                          height: 1.43
                          // fontWeight: FontWeight.b
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          textAlign: TextAlign.center,
                          "No problem! Reset your password with Tepnotty and start again",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0XFFD9D9D9),
                              letterSpacing: 0.3,
                              height: 1.43
                              // fontWeight: FontWeight.b
                              ),
                        ),
                      ),
                    )
                  ],
                ))
              : const SizedBox(),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(
        0, 172.47); // Starting point
    path.quadraticBezierTo(
      32.5,
      235.48,
      181.62,
      235.48,
    );
    path.lineTo(249.69, size.height - 65.52);
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
