import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BottomSheetContainer extends StatefulWidget {
  const BottomSheetContainer({
    Key? key,
    required this.onPostPress,
    required this.onRealPress,
    required this.onAdPress,
  });

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
              width: Get.width,
              height: 382,
              color: const Color(0xFFD9D9D9),
            ),
          ),
          Positioned(
            top: 0.5,
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                width: Get.width,
                height: 382,
                color: Colors.black,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    _buildRow(
                        Icons.square_outlined, 'Post', widget.onPostPress),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(color: Color(0xFFD9D9D9)),
                    ),
                    _buildRow(Icons.video_collection_outlined, 'Real',
                        widget.onRealPress),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(color: const Color(0xFFD9D9D9)),
                    ),
                    _buildRow(Icons.person, 'Ad', widget.onAdPress),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
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

  Widget _buildRow(IconData iconData, String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: onPressed, icon: Icon(iconData, color: Colors.white)),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.white),
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
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width - 42, 75, size.width - 118, 75);
    path.lineTo(91, 75);
    path.quadraticBezierTo(-11, 75, -11, 84 + 75);

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
    path.quadraticBezierTo(size.width - 42, 75, size.width - 118, 75);
    path.lineTo(91, 75);
    path.quadraticBezierTo(-11, 75, -11, 84 + 75);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
