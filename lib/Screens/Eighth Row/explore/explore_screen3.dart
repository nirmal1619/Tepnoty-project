import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/search_screen.dart';

class ExploreScreen3 extends StatefulWidget {
  const ExploreScreen3({Key? key}) : super(key: key);

  @override
  State<ExploreScreen3> createState() => _ExploreScreen3State();
}

class _ExploreScreen3State extends State<ExploreScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => SearchScreen());
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const S2CurvedConatiner(),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            "Manikumar Pokala",
                            style: TextStyle(fontSize: 24),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 40,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(radius: 36),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                "32",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                "326",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                "325",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 55),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          containerButton("Message Request", () {}),
                          const SizedBox(width: 20),
                          containerButton("Share Profile", () {})
                        ],
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: Get.width,
                              height: 80,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) => Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 69,
                                  height: 69,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Add a Divider
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                            // Container(
                            //   height: 2,
                            //   color: Colors.grey,
                            // ),
                            SizedBox(
                              width: Get.width,
                              height: Get.height,
                              child: GridView.builder(
                                padding: EdgeInsets.only(top: 2),
                                physics: const PageScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemCount: 10,
                                itemBuilder: (context, index) => Container(
                                  width: 215,
                                  height: 154,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.rectangle,
                                      // borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey.shade400,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Expanded(
                      //   child: GridView.builder(
                      //     gridDelegate:
                      //     SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 2,
                      //       crossAxisSpacing: 10,
                      //       mainAxisSpacing: 10,
                      //       childAspectRatio: 215 / 150,
                      //     ),
                      //     itemCount: 10,
                      //     itemBuilder: (context, index) {
                      //       return Container(
                      //         width: 215,
                      //         height: 150,
                      //         color: Colors.grey[300],
                      //         alignment: Alignment.center,
                      //         child: Text(
                      //           'Item $index',
                      //           style: TextStyle(fontSize: 20),
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector containerButton(String buttonName, Function voidCallback) {
    return GestureDetector(
      onTap: () {
        voidCallback();
      },
      child: Container(
        height: 35,
        width: 133,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFD9D9D9)),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: const TextStyle(color: Color(0xFFD9D9D9), fontSize: 14),
          ),
        ),
      ),
    );
  }
}
