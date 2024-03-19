import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/custom%20container/s_curved_container.dart';
import 'package:untitled2/Screens/Fourth%20Row/home_screen.dart';

bool pinOne = false;
bool pinTwo = false;
bool pinThree = false;
bool pinFour = false;

String firstValue = "";
String secondValue = "";
String therdValue = "";
String fourthValue = "";

class LogInUsingPin extends StatefulWidget {
  const LogInUsingPin({super.key});

  @override
  State<LogInUsingPin> createState() => _LogInUsingPinState();
}

class _LogInUsingPinState extends State<LogInUsingPin> {
  void hideContainer(int containerNumber) {
    setState(() {
      if (containerNumber == 1) {
        pinOne = true;
      } else if (containerNumber == 2) {
        pinTwo = true;
      } else if (containerNumber == 3) {
        pinThree = true;
      } else if (containerNumber == 4) {
        pinFour = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {
                  Get.to(() => HomeScreen());
                },
                child: Text("Next"),
              ))
        ],
      ),
      body: Column(
        children: [
          const Stack(
            children: [
              SCurvedConatiner(
                containerHeight: 301,
                containerWidth: 428,
                useChild: false,
              ),
              Positioned(
                child: BubbleContainer(),
              ),
            ],
          ),
          const Text(
            "Use password or fingerprint",
            // ignore: unnecessary_const
            style: const TextStyle(
              fontSize: 24.0,
            ),
          ),
          const SizedBox(height: 50.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PinBox(pinValue: true, text: firstValue),
              SizedBox(
                width: 10,
              ),
              PinBox(pinValue: true, text: firstValue),
              SizedBox(
                width: 10,
              ),
              PinBox(pinValue: true, text: firstValue),
              SizedBox(
                width: 10,
              ),
              PinBox(pinValue: true, text: firstValue),
            ],
          ),
          const SizedBox(height: 50.0),
          // Add your keypad widget here

          const Keyboard(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Back")),
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Emergancy call"))
              ],
            ),
          )
          // e.g., KeyPadWidget(),
        ],
      ),
    );
  }
}

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 216,
      decoration: const BoxDecoration(
          // Add decoration if needed
          ),
      child: Column(
        children: [
          for (var row in [
            ['1', '2', '3'],
            ['4', '5', '6'],
            ['7', '8', '9'],
            ['*', '0', '#'],
          ])
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var buttonLabel in row)
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      buttonLabel,
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class PinBox extends StatefulWidget {
  final bool pinValue;
  final String text;
  const PinBox({super.key, required this.pinValue, required this.text});

  @override
  State<PinBox> createState() => _PinBoxState();
}

class _PinBoxState extends State<PinBox> {
  @override
  Widget build(BuildContext context) {
    return widget.pinValue
        ? Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(widget.text),
          )
        : Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.circle),
            ),
          );
  }
}
