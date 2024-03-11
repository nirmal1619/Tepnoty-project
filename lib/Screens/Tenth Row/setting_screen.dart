import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/Screens/Tenth%20Row/privacy_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Handle back arrow button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
              Get.to(() => PrivacyScreen());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
            },
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: MyClipper2(),
              child: Container(
                color: Colors.white,
                child: ClipPath(
                    clipper: MyClipper1(),
                    child: Container(
                      width: Get.width,
                      height: Get.height,
                      decoration: const BoxDecoration(
                        color: Color(0xFF6E40E0),
                      ),
                    )),
              ),
            ),
            Positioned(
              top: 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildIconWithText(
                        Icons.privacy_tip_outlined, 'Privacy', () {}),
                    buildIconWithText(Icons.favorite_outline, 'Favorite', () {
                      // Handle Favorite item tap
                    }),
                    buildIconWithText(Icons.help_outline, 'Help Center', () {
                      // Handle Help Center item tap
                    }),
                    buildIconWithText(Icons.help_outline, 'Support', () {
                      // Handle Support item tap
                    }),
                    buildIconWithText(Icons.share_outlined, 'Share Profile',
                        () {
                      Get.defaultDialog(
                        backgroundColor: Colors.white,
                        title: "",
                        titlePadding: EdgeInsets.zero,
                        // actions: ,
                        contentPadding:
                            EdgeInsets.zero, // Set contentPadding to zero
                        content: SizedBox(
                          width: 342,
                          height: 92, // Adjust the height here
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.share_outlined,
                                            size: 24, color: Colors.black)),
                                  ),

                                  // Icon(, size: 24, color: Colors.black),

                                  Text('Share via',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.folder_copy_outlined,
                                          size: 24, color: Colors.black)),
                                  // Icon(, size: 24, color: Colors.black),
                                  // SizedBox(height: 8),
                                  Text('Message via',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.copy,
                                          size: 24, color: Colors.black)),
                                  // SizedBox(height: 8),
                                  Text('Copy link',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    buildIconWithText(
                        Icons.notifications_none_outlined, 'Notification', () {
                      // Handle Notification item tap
                    }),
                    buildIconWithText(Icons.archive_outlined, 'Archive', () {
                      // Handle Archive item tap
                    }),
                    buildIconWithText(Icons.qr_code, 'QR Update', () {
                      // Handle QR Update item tap
                    }),
                    buildIconWithText(Icons.arrow_circle_up, 'Upgrade', () {
                      // Handle Upgrade item tap
                    }),
                    buildIconWithText(Icons.report_outlined, 'Report a Problem',
                        () {
                      // Handle Report a Problem item tap
                    }),
                    buildIconWithText(Icons.logout_outlined, 'Logout', () {
                      // Handle Logout item tap
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            // titlePadding: EdgeInsets.only(top: 20, bottom: 0,left: 20),
                            title: Center(
                              child: Text(
                                'Log out ?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),

                            actionsAlignment: MainAxisAlignment.spaceBetween,

                            backgroundColor: Colors.black,
                            content: Container(
                              height: 20,
                              width: MediaQuery.of(context)
                                  .size
                                  .width, // Adjust the width here
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Text(
                                  "Are you sure you want to Log out",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                    },
                                    child: Text(
                                      "Cancel",
                                      style:
                                          TextStyle(color: secondaryColorValue),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(120, 47),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Add your logout action here
                                        Navigator.of(context)
                                            .pop(); // Close the dialog
                                      },
                                      child: Text(
                                        "Logout",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: secondaryColorValue,
                                        minimumSize: Size(120, 47),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      );
                    }),
                    SizedBox(height: 0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconWithText(IconData iconData, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap, // Call the provided function when tapped
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 24,
                  // color: Colors.deepPurple,
                ),
                SizedBox(width: 8.0),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    // color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width - 50,
            color: Colors.white.withOpacity(0.7),
            height: 1,
          ),
        ],
      ),
    );
  }
}

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 90); // Starting point
    path.quadraticBezierTo(
      0,
      75,
      30,
      75,
    );
    path.lineTo(size.width - 30, 75);
    path.quadraticBezierTo(
      size.width,
      75,
      size.width,
      90,
    );

    // path.quadraticBezierTo(size.width, 131, size.width, 85);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 91); // Starting point
    path.quadraticBezierTo(
      0,
      76,
      30,
      76,
    );
    path.lineTo(size.width - 30, 76);
    path.quadraticBezierTo(
      size.width,
      75,
      size.width,
      91,
    );

    // path.quadraticBezierTo(size.width, 131, size.width, 85);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
