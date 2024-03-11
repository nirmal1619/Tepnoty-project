import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/explore_screen2.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ExploreScreen2());
              },
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const PageScrollPhysics(),
        itemCount: 10, // Replace 10 with your actual item count
        padding: const EdgeInsets.only(
            bottom: kToolbarHeight), // Extend body to app bar
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        },
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Stack(
      // alignment: AlignmentDirectional.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 119, 119, 119),
          child: Center(
            child: Text(
              "$index",
              style: const TextStyle(fontSize: 24),
            ),
          ),
          // Add your child widget here if needed
        ),
        Positioned(
            left: Get.width * 0.45,
            top: Get.height * 0.55,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle_outline,
              ),
            )),
        Positioned(
            left: Get.width * 0.85,
            top: Get.height * 0.65,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
                const CircleAvatar()
              ],
            )),
        Positioned(
            left: Get.width * 0.05,
            top: Get.height * 0.82,
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Tittle/Nature",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    button(),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "Lorem Lorem Ipsum is a type of",
                      style: TextStyle(color: Color(0xFFE6E6E6)),
                    )
                  ],
                )
              ],
            )),
      ],
    );
  }
}

button() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 110,
      height: 20,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Center(
          child: Text(
            "Request To Message",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [Color(0xFF8B4AE4), Color(0xFFCE7EF3)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        border: Border.all(color: Colors.white, width: 1.3),
      ),
    ),
  );
}
