import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 328,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 0, 0, 0), // Start color (#000000)
                        secondaryColorValue, // End color (#8B4AE4)
                      ],
                    ),
                  ),
                ),
                const BubbleContainer(),
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      "Log In",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ).copyWith(top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(height: 1.43, letterSpacing: 0.3),
                ),
              ),
            ),
            SizedBox(height: 10), // Adjust the spacing as needed
            Container(
              width: MediaQuery.of(context).size.width - 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white), // Changed to white
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Adjust the spacing as needed
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(height: 1.43, letterSpacing: 0.3),
                ),
              ),
            ),
            SizedBox(height: 10), // Adjust the spacing as needed
            Container(
              width: MediaQuery.of(context).size.width - 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white), // Changed to white
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(false
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      onPressed: () {},
                    ),
                    border: InputBorder.none,
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // Adjust the spacing as needed
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: secondaryColorValue), // White border
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check,
                          size: 16,
                          color: secondaryColorValue, // White color for icon
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Remember Me",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9)), // White color for text
                  ),
                  Spacer(), // Adds space between text and button
                  TextButton(
                    onPressed: () {
                      // Add your action here
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Color(0XFFD9D9D9)), // White color for text
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GradientButton(callBackFunction: () {}, buttonName: "Login"),
            SizedBox(
              height: 10,
            ),
            GradientButton(callBackFunction: () {}, buttonName: "Register Now"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Color(0XFFD9D9D9)),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: secondaryColorValue),
                    ))
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 338,
                  height: 0.7,
                  color: Color(0XFFD9D9D9),
                ),
                Container(
                  height: 20,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Or sign up with",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Color(0XFFD9D9D9)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "or",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Color(0XFFD9D9D9)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.sms,
                    color: Colors.red,
                  ),
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
