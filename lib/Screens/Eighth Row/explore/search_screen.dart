import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/tile_container.dart';
import 'package:untitled2/Screens/Eighth%20Row/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => SearchBarScreen());
            },
            icon: Icon(Icons.search)),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Text(
                    "Explore",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 205,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => const TileContainer(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Categories",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "See more",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Nature",
                          style:
                              TextStyle(color: Color(0xFFD9D9D9), fontSize: 12),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Love",
                          style:
                              TextStyle(color: Color(0xFFD9D9D9), fontSize: 12),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Emotional",
                          style:
                              TextStyle(color: Color(0xFFD9D9D9), fontSize: 12),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Funny",
                          style:
                              TextStyle(color: Color(0xFFD9D9D9), fontSize: 12),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Pets",
                          style:
                              TextStyle(color: Color(0xFFD9D9D9), fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xFFD9D9D9),
                  ),
                ],
              ),
            ),
          ),
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
