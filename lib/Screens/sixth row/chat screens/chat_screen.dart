import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chating_screen.dart';
import 'package:untitled2/Screens/Fourth%20Row/user_profile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          SizedBox(
            child: TextButton(
                onPressed: () {},
                child: TextButton(
                  onPressed: () {
                    Get.to(() => ChatingScreen());
                  },
                  child: Text("Next"),
                )),
          ),
          SizedBox(
              width: 70,
              child: IconButton(
                  onPressed: () {
                    buildPopupMenuButton();
                  },
                  icon: Icon(Icons.menu)))
        ],
      ),
      body: Stack(
        children: [
          const LittleCurvedContainer(),
          Positioned(
              top: 100,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Chat",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: Get.width * 0.3,
                      ),
                      const Icon(Icons.person_2_rounded)
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ttileContainer("Manikumar Pokala", "here is it"),
                  const SizedBox(
                    height: 10,
                  ),
                  ttileContainer("Tepnoty AI", "send your message"),
                ],
              ))
        ],
      ),
    );
  }

  PopupMenuButton buildPopupMenuButton() {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          buildPopupMenuItem(Icons.account_circle, 'Profile'),
          buildPopupMenuItem(Icons.chat, 'Chat'),
          buildPopupMenuItem(Icons.message, 'Message Request'),
          buildPopupMenuItem(Icons.archive, 'Archive'),
          buildPopupMenuItem(Icons.help, 'Help Center'),
          buildPopupMenuItem(Icons.delete, 'Delete'),
        ];
      },
    );
  }

  PopupMenuItem buildPopupMenuItem(IconData icon, String text) {
    return PopupMenuItem(
      child: Container(
        color: Colors.grey[800], // Dark gray container
        padding:
            EdgeInsets.all(5), // Add padding for space inside the container
        child: Row(
          children: [
            Icon(icon, color: Colors.white), // Icon
            SizedBox(width: 5), // SizedBox for spacing
            Text(text, style: TextStyle(color: Colors.white)), // String
          ],
        ),
      ),
    );
  }

  Container ttileContainer(String tittle, String subtittle) {
    return Container(
      height: 80,
      width: Get.width - 48,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 22,
                ),
                Positioned(
                    bottom: 4,
                    right: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ))
              ],
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Manikumar Pokala(You)",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "here is it",
                style: TextStyle(fontSize: 12, color: Color(0xFFD9D9D9)),
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: const Color(0xFFD9D9D9))),
    );
  }

  Stack profileStatus() {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 22,
        ),
        Positioned(
            bottom: 4,
            right: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                  color: Colors.green, shape: BoxShape.circle),
            ))
      ],
    );
  }
}
