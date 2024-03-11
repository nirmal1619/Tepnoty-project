import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/support_screen.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleSpacing: 20,
        title: Text(
          "Privacy ",
          style: TextStyle(
              // color: Colo
              ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
              Get.to(() => SupportScreen());
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle action menu button press
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            S2CurvedConatiner(),
            Positioned(
              top: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 41,
                            width: 41,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.4)),
                            child: Icon(Icons.privacy_tip_outlined)),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Looks Good",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "No problem found",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_back))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70)
                          .copyWith(top: 30),
                      width: 200,
                      height: 38,
                      child: Center(
                        child: Text(
                          "Scan Device",
                          style: TextStyle(fontSize: 16)
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildContainer(
                        "App Security", "Play Protect Scanning is on"),
                    buildContainer("Device Lock",
                        "Screen lock fingerprint lock Face lock"),
                    buildContainer(
                        "Google Security Checkup", "Your Account is Protected"),
                    buildContainer("Device Finders", "No alerts"),
                    buildContainer("Password Vault", "Update password"),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconWithText(IconData iconData, String text) {
    return Column(
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
          color: Color(0xFFD9D9D9),
          height: 1,
        ),
      ],
    );
  }
}

buildContainer(String firstText, String secondText) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    width: Get.width - 50,
    height: 80,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Icon(
            Icons.check_circle,
            color: secondaryColorValue,
          ),
        ), // Example icon, replace with your desired icon
        SizedBox(width: 10), // Adjust spacing as needed
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              secondText,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    ),
  );
}


// class LittleCurvedContainer extends StatelessWidget {
//   const LittleCurvedContainer({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
