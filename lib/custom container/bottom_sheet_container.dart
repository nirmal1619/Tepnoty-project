import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomSheetContainer extends StatefulWidget {
  const BottomSheetContainer({
    Key? key,
    required this.onPostPress,
    required this.onRealPress,
    required this.onAdPress,
  }) : super(key: key);

  final VoidCallback onPostPress;
  final VoidCallback onRealPress;
  final VoidCallback onAdPress;

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Stack(
        children: [
          ClipPath(
            clipper: MyCustomClipper2(),
            child: Container(
              margin: EdgeInsets.only(bottom: 56.h),
              width: 428.w,
              height: 321.h,
              // color: Colors.red,
              color: const Color(0xFFD9D9D9),
            ),
          ),
          Positioned(
            top: 0.6,
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                margin: EdgeInsets.only(bottom: 58.h), // Added .h
                width: 428.w,
                height: 320.h,
                color: Colors.black,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 100.h, // Added .h
                    ),
                    _buildRow(
                      Icons.square_outlined,
                      'Post',
                      widget.onPostPress,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w), // Added .w
                      child: Divider(color: Color(0xFFD9D9D9)),
                    ),
                    _buildRow(
                      Icons.video_collection_outlined,
                      'Real',
                      widget.onRealPress,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w), // Added .w
                      child: Divider(color: const Color(0xFFD9D9D9)),
                    ),
                    _buildRow(
                      Icons.person,
                      'Ad',
                      widget.onAdPress,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w), // Added .w
                      child: Divider(color: Color(0xFFD9D9D9)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    IconData iconData,
    String text,
    VoidCallback onPressed,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w), // Added .w
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              iconData,
              color: Colors.white,
              size: 24.w,
            ),
          ),
          SizedBox(width: 10.w), // Added .w
          Text(
            text,
            style: TextStyle(
                fontSize: 20.sp, color: Colors.white), // Changed .w to .sp
          ),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height.h);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        size.width - 42.r, 75.r, size.width - 118.r, 75.r); // Changed .r
    path.lineTo(91.r, 75.r); // Changed .r
    path.quadraticBezierTo(-11.r, 75.r, -11.r, 84.r + 75.r); // Changed .r

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        size.width - 42.r, 75.r, size.width - 118.r, 75.r); // Changed .r
    path.lineTo(91.r, 75.r); // Changed .r
    path.quadraticBezierTo(-11.r, 75.r, -11.r, 84.r + 75.r); // Changed .r

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
