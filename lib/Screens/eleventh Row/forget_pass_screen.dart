import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/custom container/bubble_container.dart';
import 'package:untitled2/custom container/s2_container.dart';
import 'package:untitled2/custom container/s_curved_container.dart';
import 'package:untitled2/Screens/eleventh%20Row/set_new_password_screen.dart';
import 'package:untitled2/Screens/Tenth%20Row/upgrade_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => SetNewPassword());
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Stack(
        children: [
          S2CurvedConatiner(), // Corrected container name
          BubbleContainer(),
          Positioned(
            top: 300,
            left: 0, // Added left alignment
            right: 0, // Added right alignment
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Added cross axis alignment
              children: [
                Container(
                  child: Text(
                    "Forgot your Password",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "No problem! Reset your password with Tepnoty and start again.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8), // Adjusted padding
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(217, 217, 217, 1),
                          fontFamily: "Lexend",
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 28),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                      ),
                      style: const TextStyle(fontSize: 16),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GradientButton(
                  callBackFunction: () {},
                  buttonName: "Next",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
