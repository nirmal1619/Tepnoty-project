import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/Screens/Seven%20Row/video_call_screem.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final List<String> options = [
    'Search',
    'Clear Call Log',
    'Block',
    'Settings',
  ];
  @override
  Widget build(BuildContext context) {
    Widget customTileContainer(String title, String subtittle, IconData icon) {
      return Container(
        width: Get.width - 48,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16), // Adjust the spacing as needed
            const CircleAvatar(
              backgroundColor:
                  Colors.blue, // You can change the color or use an image
              radius: 25, // Adjust the size as needed
              // You can add child or backgroundImage properties to display an image
            ),
            const SizedBox(width: 16), // Adjust the spacing as needed
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  subtittle,
                  style: const TextStyle(
                      fontSize: 12, color: const Color(0xFFD9D9D9)),
                ),
              ],
            ),
            const Spacer(), // Add space between text and icon
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                icon,
                size: 25,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => VideoCall());
              },
              icon: Icon(Icons.arrow_forward)),
          PopupMenuButton(
            color: Colors.black,
            position: PopupMenuPosition.under,
            itemBuilder: (context) {
              return [
                for (var option in options)
                  PopupMenuItem(
                    onTap: () {
                      // Define action for each option
                      print('Action for $option');
                    },
                    child: Row(
                      children: [
                        Icon(_getIconForOption(option)), // Get icon for option
                        const SizedBox(width: 5),
                        Text(option), // Text for option
                      ],
                    ),
                  ),
              ];
            },
          )

          // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90), // Set the preferred height
          child: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 25), // Adjust horizontal margin as needed
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Contact',
                  hintStyle: const TextStyle(
                    color:
                        Color.fromARGB(255, 24, 23, 23), // Set hint text color
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade800),
                  // filled: , // Set to true to enable filling the background
                  // fillColor:
                  //     Colors.grey.shade800, // Set a darker background color
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white), // Set text color to white
              ),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: Stack(children: [
                  Container(
                    width: Get.width,
                    height: 188,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black, // Top color - deep purple
                          Color(0xFF8B4AE4)
                          // Bottom olor - light deep purple
                        ],
                      ),
                    ),
                  ),
                  const Positioned(child: BubbleContainer()),
                ])),
            //
            Positioned(
                left: 24,
                top: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTileContainer("Tepnoty AI", "#.05 min ago",
                        Icons.video_call_outlined),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Recents",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customTileContainer(
                        "Tepnoty AI", "#.05 min ago", Icons.call),
                    const SizedBox(
                      height: 20,
                    ),
                    customTileContainer(
                        "Tepnoty AI", "#.05 min ago", Icons.call),
                    const SizedBox(
                      height: 20,
                    ),
                    customTileContainer(
                        "Tepnoty AI", "#.05 min ago", Icons.call),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  IconData _getIconForOption(String option) {
    switch (option) {
      case 'Search':
        return Icons.search;
      case 'Clear Call Log':
        return Icons.call;

      case 'Block':
        return Icons.block_rounded;
      case 'Settings':
        return Icons.settings;
      default:
        return Icons.help; // Default icon if option is not recognized
    }
  }
}
