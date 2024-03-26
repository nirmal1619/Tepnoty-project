import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SCurvedConatiner extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final bool useChild;

  const SCurvedConatiner({
    Key? key,
    required this.containerHeight,
    required this.containerWidth,
    required this.useChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          color: const Color(0xFF6E40E0),
        ),
        child: useChild
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your password",
                      style: TextStyle(
                        fontSize: 24.sp, // Use sp for font size
                        color: Colors.white,
                        letterSpacing: 0.3.w,
                        height: 1.43.h,
                      ),
                    ),
                    SizedBox(
                      height: 20.h, // Use h for height
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.w), // Use w for width
                        child: Text(
                          "No problem! Reset your password with Tepnotty and start again",
                          style: TextStyle(
                            fontSize: 16.sp, // Use sp for font size
                            color: const Color(0XFFD9D9D9),
                            letterSpacing: 0.3.w,
                            height: 1.43.h,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 172.47.h); // Starting point, use h for height
    path.quadraticBezierTo(
      32.5.w, // Use w for width
      235.48.h, // Use h for height
      181.62.w, // Use w for width
      235.48.h, // Use h for height
    );
    path.lineTo(
        249.69.w, size.height - 65.52.h); // Use w and h for width and height
    path.quadraticBezierTo(
        380.w, 235.48.h, size.width, 301.h); // Use w and h for width and height
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
