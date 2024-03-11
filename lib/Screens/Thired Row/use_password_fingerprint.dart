import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/stack_desgine.dart';

class LogInUsingPin extends StatefulWidget {
  const LogInUsingPin({Key? key}) : super(key: key);

  @override
  State<LogInUsingPin> createState() => _LogInUsingPinState();
}

class _LogInUsingPinState extends State<LogInUsingPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                StackDesign2(),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          "Use password and Fingerprint ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        SizedBox(height: 20), // Add gap of 20 pixels
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NumberTextField(),
                            SizedBox(width: 20), // Add gap between text fields
                            NumberTextField(),
                            SizedBox(width: 20), // Add gap between text fields
                            NumberTextField(),
                            SizedBox(width: 20), // Add gap between text fields
                            NumberTextField(),
                          ],
                        ),
                        SizedBox(height: 40), // Add gap of 20 pixels

                        CustomKeyboard()
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 20,
                    left: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Back",
                              style: TextStyle(fontSize: 16),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Emergency call",
                              style: TextStyle(fontSize: 16),
                            ))
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NumberTextField extends StatefulWidget {
  @override
  _NumberTextFieldState createState() => _NumberTextFieldState();
}

class _NumberTextFieldState extends State<NumberTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
          border: Border.all(width: 2, color: Color(0XFFD9D9D9))),
      child: TextField(
        controller: _controller,
        maxLength: 1,
        keyboardType: TextInputType.number,
        obscureText: true,
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CustomKeyboard extends StatelessWidget {
  const CustomKeyboard();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNumberButton("1"),
              buildNumberButton("2"),
              buildNumberButton("3"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNumberButton("4"),
              buildNumberButton("5"),
              buildNumberButton("6"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNumberButton("7"),
              buildNumberButton("8"),
              buildNumberButton("9"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Empty space for alignment
              buildNumberButton("*"),
              buildNumberButton("0"),
              buildNumberButton("c"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNumberButton(String number) {
    return GestureDetector(
      onTap: () {
        // Return the pressed number
      },
      child: Text(
        number,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
