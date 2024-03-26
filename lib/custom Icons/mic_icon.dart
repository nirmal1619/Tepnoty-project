import 'package:flutter/material.dart';

class MicIconWidget extends StatelessWidget {
  const MicIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval(
          child: Container(
            //23
            width: 23,
            height: 25,
            color: Colors.white,
          ),
        ),
        Positioned(
          child: Icon(
            Icons.mic_none_rounded,
            size: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
