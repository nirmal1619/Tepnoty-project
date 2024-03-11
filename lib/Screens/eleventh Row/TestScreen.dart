import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              height: Get.height,
              color: Colors.deepPurple.shade200,
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Tab(
                          text: "Gallery",
                        ),
                        Tab(icon: Icon(Icons.search)),
                        Tab(icon: Icon(Icons.favorite)),
                        Tab(icon: Icon(Icons.person)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
