import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/Seven%20Row/contacts_screen.dart';

class ChatingScreen extends StatefulWidget {
  const ChatingScreen({Key? key}) : super(key: key);

  @override
  State<ChatingScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<ChatingScreen> {
  bool _isCancelled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          ClipOval(
            child: Container(
              //23
              width: 48,
              height: 48,
              color: Colors.white,
            ),
          ),
          Positioned(
            child: Icon(
              Icons.mic_none_rounded,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      appBar: appbar(), // Calls the appbar() method to set the app bar
      body: Stack(
        children: [
          LittleCurvedContainer(),
          sendMessageField(context), // Adds the send message field
          // Adds a custom curved container
          chatingUserHeader(context), // Adds the user profile header
          Positioned(
              bottom: 110,
              left: 0,
              right: 40,
              child: Container(
                height: 44,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: Get.height - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.white), // White border
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.mic_outlined,
                              color: Colors.red, // Red mic icon
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '0:34', // Timing text
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Slide to cancel', // Slide to cancel text
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              left: 24,
              right: 24,
              bottom: 50,
              child: Divider(
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  // Method to build the user profile header
  Positioned chatingUserHeader(BuildContext context) {
    return Positioned(
      top: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 19,
                ),
                SizedBox(width: 10),
                Text(
                  "TEPNOTY",
                  style: TextStyle(
                    fontSize: 24,
                    height: 1.4,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            voiceMessage(context),
            TextBox() // Adds the voice message section
          ],
        ),
      ),
    );
  }

  // Method to build the send message field
  Positioned sendMessageField(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                height: 44,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      suffixIconColor: Colors.white,
                      suffixIcon: Container(
                        width: 80,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 35,
                              child: IconButton(
                                onPressed: () {
                                  attachAlertDialog(
                                      context); // Shows attachment options dialog
                                },
                                icon: Icon(
                                  Icons.attach_file_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                              child: IconButton(
                                onPressed: () {
                                  // Action for camera icon
                                },
                                icon: Icon(Icons.camera_alt),
                              ),
                            ),
                          ],
                        ),
                      ),
                      hintText: "Type a message",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.send_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build the app bar
  AppBar appbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                width: 35,
                child: IconButton(
                  onPressed: () {
                    Get.to(() => ContactScreen());
                  },
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 35,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call_outlined, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 35,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.videocam_outlined, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 35,
                child: PopupMenuButton(
                  surfaceTintColor: Colors.black,
                  position: PopupMenuPosition.under,
                  // Moved PopupMenuButton here
                  itemBuilder: (context) => [
                    _buildPopupMenuItem(Icons.search, "Search"), // Search item
                    _buildPopupMenuItem(Icons.volume_off_outlined, "Mute"),
                    _buildPopupMenuItem(Icons.cloud_circle,
                        "Disappearing message"), // Mute item
                    // _buildPopupMenuItem(Icons.notifications,
                    //     "Notification"), // Notification item
                    // Disappearing message item
                    _buildPopupMenuItem(
                        Icons.wallpaper, "Wallpaper"), // Wallpaper item
                    _buildPopupMenuItem(
                        Icons.delete_outline, "Clear chat"), // Clear chat item
                    _buildPopupMenuItem(Icons.add_box_outlined,
                        "Add shortcut"), // Add shortcut item
                    _buildPopupMenuItem(Icons.account_circle_outlined,
                        "Change avatar"), // Change avatar item
                    _buildPopupMenuItem(Icons.block, "Block user",
                        textColor: Colors.red), // Block user item with red text
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

// Method to build a PopupMenuItem with an icon and text widget
  PopupMenuItem _buildPopupMenuItem(IconData iconData, String text,
      {Color textColor = Colors.white}) {
    return PopupMenuItem(
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16),
          ),
        ],
      ),
    );
  }

  // Method to build the voice message section
  Stack voiceMessage(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90,
          child: Row(
            children: [
              CircleAvatar(
                radius: 19,
              ),
              SizedBox(width: 10),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 52,
                  minHeight: 52,
                  maxWidth: MediaQuery.of(context).size.width * 0.57,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Icon(Icons.record_voice_over_outlined),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 60,
          top: 0,
          bottom: -55,
          child: IconButton(
            onPressed: () {
              // Action for pause icon button
            },
            icon: Icon(Icons.play_arrow_rounded, size: 30, color: Colors.white),
          ),
        ),
        Positioned(top: 55, right: 30, bottom: 0, child: MicIconWidget()),
      ],
    );
  }

  // Method to show attachment options dialog
  Future<dynamic> attachAlertDialog(BuildContext context) {
    return showDialog(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.bottomCenter,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          surfaceTintColor: Colors.grey.shade900,
          backgroundColor: Colors.black,
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          insetPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
          content: Container(
            height: 200,
            width: Get.width - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIconContainer(Icons.file_open_outlined, "Documents"),
                    _buildIconContainer(Icons.camera_alt_outlined, "Camera"),
                    _buildIconContainer(Icons.poll_rounded, "Poll"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIconContainer(Icons.headphones_outlined, "Audio"),
                    _buildIconContainer(Icons.person_2_outlined, "Contact"),
                    _buildIconContainer(
                        Icons.location_on_outlined, "Locations"),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Method to build the icon container for attachment options
  Widget _buildIconContainer(IconData iconData, String text) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Icon(
              iconData,
              color: Colors.black,
              size: 24,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}

// Class for the text box widget
class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          constraints: BoxConstraints(
            minHeight: 52,
            maxWidth: MediaQuery.of(context).size.width * 0.57,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "How can I assist you today?",
              style: TextStyle(
                height: 1.4,
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 1.3,
                wordSpacing: 1.4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Class for the mic icon widget
class MicIconWidget extends StatelessWidget {
  const MicIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval(
          child: Container(
            //23
            width: 23,
            height: 25,
            color: Colors.white,
          ),
        ),
        Positioned(
          child: Icon(
            Icons.mic_none_rounded,
            size: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
