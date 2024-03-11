import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/s2_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/report_screen.dart';

class UpgradeScreen extends StatelessWidget {
  const UpgradeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleSpacing: 20,
        title: Text(
          "Upgrade",
          style: TextStyle(
              // color: Colo
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
                Get.to(() => ReportScreen());
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
                              child: Icon(
                                Icons.currency_bitcoin,
                                color: Colors.yellow,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Upgrade to Premium Package",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.arrow_back))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70)
                          .copyWith(top: 10),
                      width: 198,
                      height: 38,
                      child: Center(
                        child: Text(
                          "Click to Upgrade",
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
                    SizedBox(height: 16),
                    buildContainer("Tepnoty Plus", "Monthly package"),
                    buildContainer("Tepnoty Plus Premium", "Quartly package"),
                    buildContainer("Tepnoty Plu Ultras", "Year package"),
                    // buildContainer("Tepnoty Plus", "Monthly package")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
}
