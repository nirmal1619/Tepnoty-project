import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';
import 'package:untitled2/Screens/Tenth%20Row/upgrade_screen.dart';

class ShareProfile extends StatelessWidget {
  const ShareProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () {
                Get.to(() => UpgradeScreen());
              },
              icon: Icon(Icons.menu)),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SCurvedConatiner(
                containerHeight: 301,
                containerWidth: Get.width,
                useChild: false,
              ),
              // const Positioned(
              //   top: 40,
              //   left: 0,
              //   right: 0,
              //   child: buttonRow(),
              // ),
              Positioned(
                left: 110,
                top: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "ManiKumar Pokala",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Lexend",
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 5),
                          child: Text(
                            "He/Him",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Stack(
                            children: [
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF8B4AE4),
                                      Color(0xFFCE7EF3),
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const Positioned(
                                  top: 5,
                                  right: 10,
                                  child: Icon(
                                    Icons.pentagon_outlined,
                                    weight: 15,
                                    opticalSize: 15,
                                    size: 7,
                                    color: Color(0xFFFFE713),
                                  )),
                              const Positioned(
                                  top: 10,
                                  bottom: 15,
                                  right: 4,
                                  child: Icon(
                                    Icons.mode_edit_outline_outlined,
                                    size: 7,
                                    color: Color(0xFFFFE713),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text("designsby_Mani"),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 0),
                          child: Container(
                            height: 16,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color.fromRGBO(217, 217, 217, 1),
                              ),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(139, 74, 228, 1),
                                Color.fromRGBO(206, 126, 243, 1)
                                // Color(0xFF8B4AE4),

                                // Color(0xFF8B4AE4),
                                // Color(0xFFCE7EF3),
                              ]),
                            ),
                            child: const Center(
                              child: Text(
                                "Request To Message",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                left: 10,
                child: Stack(
                  children: [
                    Container(
                      height: 85,
                      width: 88,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                              // color: Colors.white,

                              )),
                      child: const CircleAvatar(),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            color: secondaryColorValue,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            )),
                        child: const Icon(
                          Icons.edit_sharp,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: -5,
                  left: 14,
                  right: 14,
                  child: Center(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: Get.width * 0.7),
                      child: Center(
                        child: Text(
                          "For Sharing Your Profile Easily Via Different Devices and Platforms",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            "QR Code",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          const SizedBox(height: 20),
          Container(
            height: 317,
            width: 317,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
            child: Container(
              height: 100,
              width: 100,
              child: Icon(
                Icons.qr_code,
                size: 250,
              ),
            ),
          ),
          Center(
              child: Text(
            "scan me",
            style: TextStyle(fontSize: 16),
          )),
          const SizedBox(
            height: 30,
          ),
          GradientButton(callBackFunction: () {}, buttonName: "Share")
        ],
      ),
    );
  }
}

class buttonRow extends StatelessWidget {
  const buttonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const Spacer(),
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
