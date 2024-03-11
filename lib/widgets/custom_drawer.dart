import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Get.theme.brightness == Brightness.dark;

    return Drawer(
      child: Container(
        width: 280,
        color: isDarkMode ? Colors.black87 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white,
                      // Replace with user's avatar image
                      // backgroundImage: AssetImage('assets/user_avatar.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Mani Kumar Pokola',
                            style: TextStyle(
                              fontSize: 16,
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Design Stylist',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFD9D9D9),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 90,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CircleAvatar(
                            radius: 25,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Upgrade Program',
                                  style: TextStyle(
                                      height: 1.5,
                                      fontSize: 14,
                                      color: Get.isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Unlock your AI Model and get all features',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: ListView(
                  children: [
                    _buildDrawerItem(Icons.chat_outlined, 'New Chat'),
                    _buildDrawerItem(Icons.history, 'Recent History'),
                    _buildDrawerItem(Icons.storage_rounded, 'Set Database'),
                    _buildDrawerItem(Icons.settings_outlined, 'Settings'),
                    _buildDrawerItem(Icons.help_center_outlined, 'Help Center'),
                    _buildDrawerItem(
                        Icons.feedback_outlined, 'Send us Feedback'),
                    const SizedBox(
                        height:
                            10), // Add SizedBox to create space between items and Logout button
                  ],
                ),
              ),
              const Divider(color: Colors.grey),
              ListTile(
                onTap: () {
                  // Handle logout action
                },
                leading: Icon(Icons.logout,
                    color: Get.isDarkMode ? Colors.white : Colors.black),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
          child: ListTile(
            onTap: () {},
            leading: Icon(
              icon,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
            // horizontalTitleGap: Ed,\
            // titleAlignment: ListTileTitleAlignment.threeLine,
            title: Text(
              textAlign: TextAlign.start,
              name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode ? Colors.white : Colors.black),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18),
          child: Divider(color: Colors.grey),
        ),
      ],
    );
  }
}
