import 'package:flutter/material.dart';
import 'package:untitled2/custom%20container/bottom_container.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import '../../button/gradient_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                BubbleContainer(),
                LogInStuff(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LogInStuff extends StatefulWidget {
  const LogInStuff({super.key});
  // Change to StatefulWidget to manage checkbox state
  @override
  // ignore: library_private_types_in_public_api
  _LogInStuffState createState() => _LogInStuffState();
}

class _LogInStuffState extends State<LogInStuff> {
  // Added State class
  bool _isChecked = false; // Added boolean variable for checkbox

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Stack(
        children: [
          const BottomContainer(
            containerHeight: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 24,
                    height: 1.43,
                    letterSpacing: 3,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    height: 1.43,
                    letterSpacing: 3,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.white), // Changed border color to white
                  ),
                  child: const Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your Email",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFD9D9D9),
                            ),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    height: 1.43,
                    letterSpacing: 3,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.white), // Changed border color to white
                  ),
                  child: const Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter your Password",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFD9D9D9),
                            ),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value:
                          _isChecked, // Use boolean variable for checkbox state
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!; // Update checkbox state
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.deepPurple,
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white, // Changed text color to white
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                GradientButton(
                  callBackFunction: () {},
                  buttonName: 'Log In',
                ),
                const SizedBox(height: 14),
                GradientButton(
                  callBackFunction: () {},
                  buttonName: 'Register',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
