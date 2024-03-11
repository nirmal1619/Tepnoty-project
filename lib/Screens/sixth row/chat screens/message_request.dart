import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom%20container/littleCurvedContainer.dart';
import 'package:untitled2/Screens/sixth%20row/chat%20screens/all_message_request.dart';

class MessageRequest extends StatelessWidget {
  const MessageRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => AllMessageRequest());
              },
              icon: Icon(Icons.arrow_forward)),
          buildPopupMenuButton(),
        ],
      ),
      body: Stack(
        children: [
          LittleCurvedContainer(),
          Positioned(
            left: 24,
            right: 24,
            top: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Manikumar Pokala",
                      style: TextStyle(
                        fontSize: 24,
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer()
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 102,
                  width: 102,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey, // Placeholder color
                  ),
                  // Custom Avatar goes here
                ),
                SizedBox(height: 0),
                Text(
                  "Mani Kumar",
                  style: TextStyle(
                    fontSize: 24,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 0),
                Text(
                  "Tepnoty Mani Kumar",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "506 Followers",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "8 Posts",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8),
                Text(
                  "Follow you",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // Circular Avatar with Stack and Container
          // Positioned(
          //   left: 20,
          //   top: 20,
          //   child: Container(
          //     height: 38,
          //     width: 38,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.grey, // Placeholder color
          //     ),
          //     // Custom Avatar goes here
          //   ),
          // ),
          // Red Circular Dot

          // Row with Container containing text widget
          Positioned(
              left: 0,
              right: 0,
              bottom: 80,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "3:34",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey, // Placeholder color
                              ),
                              // Custom Avatar goes here
                            ),
                            Positioned(
                              right: 5,
                              bottom: 3,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  color: Colors.red, // Your custom dot color
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 18,
                          constraints: BoxConstraints(
                              minWidth: 30, maxWidth: Get.width - 200),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Hello bro",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: Get.width - 70),
                      child: Center(
                        child: Text(
                            textAlign: TextAlign.center,
                            "Accept  message request from Vicky(vickysagar48)?"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: Get.width - 20),
                    child: Text(
                      textAlign: TextAlign.center,
                      "If you accept, they will also be able to call you and see info such as your activity and status when you have read messages. ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 37,
                          width: Get.width * 0.26,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Block",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        Container(
                          height: 37,
                          width: Get.width * 0.35,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        Container(
                          height: 37,
                          width: Get.width * 0.26,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class LittleCurvedContainer extends StatelessWidget {
  const LittleCurvedContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            color: Color(0xFF6E40E0),
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 105 - 40); // Starting point
    path.quadraticBezierTo(
      0,
      151 - 40,
      57,
      151 - 40,
    );
    path.lineTo(size.width - 80, 151 - 40);
    path.quadraticBezierTo(size.width - 35, 151 - 40, size.width, 180 - 40);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}

PopupMenuButton buildPopupMenuButton() {
  return PopupMenuButton(
    icon: Icon(Icons.menu),
    color: Colors.black,
    position: PopupMenuPosition.under,
    itemBuilder: (BuildContext context) {
      return [
        buildPopupMenuItem(Icons.account_circle_outlined, 'Profile'),
        buildPopupMenuItem(Icons.chat_bubble_outline, 'Chat'),
        buildPopupMenuItem(Icons.message_outlined, 'Message Request'),
        buildPopupMenuItem(Icons.archive_outlined, 'Archive'),
        buildPopupMenuItem(Icons.help_outline, 'Help Center'),
        buildPopupMenuItem(Icons.delete_outline_outlined, 'Delete'),
      ];
    },
  );
}

PopupMenuItem buildPopupMenuItem(IconData icon, String text) {
  return PopupMenuItem(
    padding: EdgeInsets.zero,
    child: Container(
      width: double.infinity,
      color: Colors.grey[900], // Dark gray container
      padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 5), // Add padding for space inside the container
      child: Row(
        children: [
          Icon(icon, color: Colors.white), // Icon
          SizedBox(width: 5), // SizedBox for spacing
          Text(text, style: TextStyle(color: Colors.white)), // String
        ],
      ),
    ),
  );
}
