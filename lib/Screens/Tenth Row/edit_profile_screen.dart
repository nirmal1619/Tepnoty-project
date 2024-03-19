import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Tenth%20Row/setting_screen.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Handle back arrow button press
          },
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
              Get.to(() => SettingScreen());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // physics: FixedExtentScrollPhysics(),
        child: Stack(
          children: [
            S2CurvedConatiner(),
            Positioned(
                top: 120,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: usersProfile()),
                      SizedBox(
                        height: 30,
                      ),
                      buildInputField('Name', Colors.deepPurple),
                      buildInputField('Username', Colors.deepPurple),
                      buildInputField('Bio', Colors.deepPurple),
                      buildInputField('Category', Colors.deepPurple),
                      buildInputField('Gender', Colors.deepPurple),
                      buildInputField('Pronouns', Colors.deepPurple),
                      buildInputField('Phone Number', Colors.deepPurple),
                      buildInputField('Email', Colors.deepPurple),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        height: 48,
                        width: Get.width - 159,
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
                        child: Center(
                          child: Text(
                            "Save",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget buildInputField(String title, Color borderColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: Get.width - 40,
            height: 30,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: borderColor, // Set border color based on parameter
                  ),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: title == "Phone Number"
                        ? Icon(
                            Icons.check_circle_outline,
                            color: Colors.green,
                          )
                        : title == "Email     "
                            ? Icon(
                                Icons.error_rounded,
                                color: Colors.red,
                              )
                            : null
                    // Hide the default border
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Padding usersProfile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Stack(
      children: [
        Container(
          // color: Colors.black,
          width: 160,
          height: 88,
        ),
        Positioned(
          left: 0,
          child: CircleAvatar(
            radius: 44,
            backgroundColor: const Color.fromARGB(255, 240, 210, 167),
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 44,
          ),
        ),
      ],
    ),
  );
}

class S2CurvedConatiner extends StatelessWidget {
  const S2CurvedConatiner({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: Get.width,
          height: 999,
          decoration: const BoxDecoration(
            color: const Color(0xFF6E40E0),
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 160.47); // Starting point
    path.quadraticBezierTo(
      32.5,
      235.48,
      181.62,
      235.48,
    );
    path.lineTo(249.69, 235.48);
    path.quadraticBezierTo(380, 235.48, size.width, 301);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
