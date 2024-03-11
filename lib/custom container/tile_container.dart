import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileContainer extends StatelessWidget {
  const TileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.all(8),
        width: 247, // Adjust the width as needed
        color: const Color.fromARGB(255, 62, 122, 119),
        height: 205,
      ),
      const Positioned(
          bottom: 10,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tittle",
                style: TextStyle(fontSize: 14),
              ),
              Text("Lorem Lorem Ipsum is a type of",
                  style: TextStyle(fontSize: 12, color: Color(0xFFE6E6E6))),
            ],
          )),
      Positioned(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.hearing_outlined,
                        color: Colors.red,
                      )),
                )
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
