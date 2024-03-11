import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/share_profile_QR_code.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 8),
          child: Text(
            "Support ",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle action menu button press
                Get.to(() => ShareProfile());
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 41,
                              width: 41,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.4)),
                              child: Icon(Icons.call_outlined)),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Queries Answered 24/7",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: Get.width * 0.15,
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.arrow_back))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70)
                          .copyWith(top: 10),
                      width: 160,
                      height: 38,
                      child: Center(
                        child: Text(
                          "Connect",
                          style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildContainer("Technical Issue"),
                    buildContainer("Purchase Queries"),
                    buildContainer("Report a problem"),
                    buildContainer("Other issues"),
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

buildContainer(String firstText) {
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
