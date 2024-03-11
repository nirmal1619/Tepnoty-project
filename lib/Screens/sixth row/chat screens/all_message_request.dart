import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/chating_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/edit_profile_screen.dart';
import 'package:untitled2/Screens/Fifth%20row/Fourth%20Row/user_profile.dart';

class AllMessageRequest extends StatelessWidget {
  const AllMessageRequest({Key? key}) : super(key: key);

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
                    Get.to(() => EditProfile());
                  },
                  child: Text("Next"),
                )),
          ),
          SizedBox(width: 70, child: buildPopupMenuButton())
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
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
                    Container(
                      height: 55,
                      width: Get.width - 48,
                      child: Row(
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Text("All requests "),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings_outlined))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0XFFD9D9D9))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ttileContainer("Manikumar Pokala", "here is it"),
                    const SizedBox(
                      height: 10,
                    ),
                    ttileContainer("Sital", "send your a message...."),
                    const SizedBox(
                      height: 10,
                    ),
                    ttileContainer("Mukesh", "send your a message...."),
                    const SizedBox(
                      height: 10,
                    ),
                    ttileContainer("Ramesh", "send your a message...."),
                    const SizedBox(
                      height: 10,
                    ),
                    ttileContainer("Ram", "send your a message...."),
                    const SizedBox(
                      height: 10,
                    ),
                    // ttileContainer("Tepnoty AI", "send your message"),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  PopupMenuButton buildPopupMenuButton() {
    return PopupMenuButton(
      icon: Icon(Icons.menu),
      color: Colors.black,
      position: PopupMenuPosition.under,
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
      padding: EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        color: Colors.grey[900], // Dark gray container
        padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5), // Add padding for space inside the container
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 5),
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
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tittle, // Display the title
                style: TextStyle(fontSize: 16),
              ),
              Text(
                subtittle, // Display the subtitle
                style: TextStyle(fontSize: 12, color: Color(0xFFD9D9D9)),
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            "3.49",
            style: TextStyle(color: Color(0XFFD9D9D9)),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: const Color(0xFFD9D9D9)),
      ),
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
