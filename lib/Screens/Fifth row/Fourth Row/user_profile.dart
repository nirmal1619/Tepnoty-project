import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/adjustable_gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';

import 'package:untitled2/custom%20container/stack_desgine.dart';
import 'package:untitled2/Screens/Fifth%20row/Fourth%20Row/member%20ship%20plans/plus_membership.dart';

import 'notification_screen.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => PlusMemberShipPlan());
              },
              icon: Icon(Icons.arrow_forward)),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              child: AdjustableGradientButton(
                buttonHeight: 22,
                buttonWidth: 90,
                buttonName: "Go Premium",
                voidCallback: () {},
              ),
            ),
          ),
          // TextButton(
          //     onPressed: () {},
          //     child: TextButton(
          //       onPressed: () {
          //         Get.to(() => NotificationScreen());
          //       },
          //       child: Text("Next"),
          //     ))
        ],
      ),
      body: Stack(
        children: [
          const StackDesign2(),
          Positioned(
            top: 110,
            left: 24,
            right: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                profileStatus(),
                const SizedBox(height: 20),
                const Text(
                  "Manikumar Pokala",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "Leave a note",
                  style: TextStyle(fontSize: 16, color: primaryColorValue),
                ),
                const SizedBox(height: 20),
                textWithIcon(Icons.dark_mode_outlined, "Dark Mode", () {}),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                textWithIcon(Icons.circle_outlined, "Active Status", () {}),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                textWithIcon(Icons.help_outline_outlined, "Help", () {}),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                textWithIcon(Icons.privacy_tip_outlined, "Privacy", () {}),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                textWithIcon(
                    Icons.perm_device_information_rounded, "Update", () {}),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                textWithIcon(Icons.fingerprint,
                    "Fingerprint, Face, and Password", () {}),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                textWithIcon(
                    Icons.monetization_on, "Tepnoty Plus Membership", () {}),
                const SizedBox(height: 10),
                const Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Stack profileStatus() {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        const CircleAvatar(
          radius: 65,
          // backgroundImage: AssetImage('your_image_path_here'),
        ),
        Positioned(
          bottom: -20,
          right: -10,
          child: SizedBox(
            width: 70,
            height: 70,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_enhance_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget textWithIcon(IconData icon, String text, Function() onPressed) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Text(text),
        const Spacer(),
        // IconButton(
        //   onPressed: onPressed,
        //   icon: Icon(Icons.arrow_forward_ios),
        // ),
      ],
    );
  }
}
