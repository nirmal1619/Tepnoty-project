import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BellNotificationDesign extends StatelessWidget {
  const BellNotificationDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined)),
        Positioned(
          right: 15,
          top: 17,
          child: Container(
            width: 10,
            height: 10,
            decoration:
                const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: const Center(
              child: const Text(
                "4",
                style: TextStyle(fontSize: 7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
