import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode; // Get the current theme mode

    return Scaffold(
      body: Stack(
        children: [
          const LittleCurvedContainer(),
          Positioned(
            top: 80,
            left: 24,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'History',
                  style: TextStyle(
                      fontSize: 24, height: 1.43, fontWeight: FontWeight.w600
                      // Add other styles as needed
                      ),
                ),
                const SizedBox(
                  width: 235,
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: isDarkMode
                        ? const Color(0xFFD9D9D9)
                        : Colors.black, // Icon color based on theme mode
                  ),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ],
            ),
          ),
          const Positioned(
              top: 140,
              left: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 40),
                    ContainerWid(),
                    SizedBox(height: 20),
                    ContainerWid(),
                    SizedBox(height: 20),
                    ContainerWid(),
                    SizedBox(height: 20),
                    ContainerWid()
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class ContainerWid extends StatelessWidget {
  const ContainerWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99,
      width: Get.width - 48,
      decoration: BoxDecoration(
          border:
              Border.all(color: Get.isDarkMode ? Colors.white : Colors.black),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          maxLines: 1,
                          'Photography and hiking sound awesome!', // Assuming you have a title for each item
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis
                              // color: Theme.of(context).brightness == Brightness.dark ? Color(0xFFD9D9D9) : Colors.black,
                              // Add other styles as needed
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    maxLines: 1,
                    'As for me, I love exploring the vast world of ', // Assuming you have a subtitle for each item
                    style: TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color(0xFFD9D9D9)
                          : Colors.black,
                      // Add other styles as needed
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ))
          ],
        ),
      ),
    );
  }
}
