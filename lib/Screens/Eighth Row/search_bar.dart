import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/ninth%20row/profile_view.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ProfileViewScreen());
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            // Wrapping with Center widget to position in the middle
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              width: Get.width - 48,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 200),
          const Icon(Icons.search, size: 200, color: Colors.white),
          const SizedBox(height: 16),
          const Text(
            'Search you want to explore',
            style: TextStyle(fontSize: 16, color: Color(0xFFD9D9D9)),
          ),
        ],
      ),
    );
  }
}
