import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Eighth%20Row/explore/explore_screen3.dart';


class ExploreScreen2 extends StatefulWidget {
  const ExploreScreen2({super.key});

  @override
  State<ExploreScreen2> createState() => _ExploreScreen2State();
}

class _ExploreScreen2State extends State<ExploreScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nature"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ExploreScreen3());
              },
              icon: Icon(Icons.arrow_forward)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 9.0,
                mainAxisSpacing: 9.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    width: 100,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14)),
                  );
                },
                childCount: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
