import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const LittleCurvedContainer(),
              const Positioned(
                top: 40,
                left: 24,
                right: 24,
                child: buttonRow(),
              ),
              const Positioned(
                top: 120,
                left: 24,
                child: Text(
                  "Notification",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 56,
                  width: Get.width,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Allow Notification',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Switch(
                          trackColor: MaterialStateColor.resolveWith(
                              (states) => secondaryColorValue),
                          inactiveTrackColor: Colors.white,
                          activeTrackColor: Colors.white,
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                    child: Center(
                      child: Container(
                        width: 30,
                        height: 5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Lock Screen", style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 10),
                  const Icon(Icons.check_circle, color: secondaryColorValue),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            width: 30,
                            height: 5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Banner", style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 10),
                  const Icon(Icons.check_circle, color: secondaryColorValue),
                ],
              )
            ],
          ),
          const SizedBox(height: 25),
          Container(
            height: 57,
            width: Get.width,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white),
            ),
            child: const ListTile(
              title: Text(
                "Badge",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Dot",
                  style: TextStyle(fontSize: 12, color: Color(0xFFA264F7)),
                ),
              ),
              titleAlignment: ListTileTitleAlignment.top,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 208,
              width: Get.width,
              // padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Ringtone",
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          trackColor: MaterialStateColor.resolveWith(
                              (states) => secondaryColorValue),
                          inactiveTrackColor: Colors.white,
                          activeTrackColor: Colors.white,
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Vibrate",
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          trackColor: MaterialStateColor.resolveWith(
                              (states) => secondaryColorValue),
                          inactiveTrackColor: Colors.white,
                          activeTrackColor: Colors.white,
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Message Notification",
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          trackColor: MaterialStateColor.resolveWith(
                              (states) => secondaryColorValue),
                          inactiveTrackColor: Colors.white,
                          activeTrackColor: Colors.white,
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Miscellaneous",
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          trackColor: MaterialStateColor.resolveWith(
                              (states) => secondaryColorValue),
                          inactiveTrackColor: Colors.white,
                          activeTrackColor: Colors.white,
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class buttonRow extends StatelessWidget {
  const buttonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const Spacer(flex: 1),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_box_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
        ),
      ],
    );
  }
}
