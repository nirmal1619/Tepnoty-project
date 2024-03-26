import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomContainer extends StatelessWidget {
  final double containerHeight;

  const BottomContainer({Key? key, required this.containerHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperBottomContainer(),
      child: Container(
        height: containerHeight.h,
        width: 428.w,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 5.r,
              spreadRadius: 2.r,
              offset: Offset(0, -2.h),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipperBottomContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height.h);
    path.lineTo(size.width.w, size.height.h);
    path.lineTo(size.width.w, 50.h);

    path.quadraticBezierTo(size.width.w, 0, size.width.w - 50.w, 0);
    path.lineTo(50.w, 0);
    path.quadraticBezierTo(0, 0, 0, 50.h);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
