import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screens/Tenth%20Row/setting_screen.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   scrolledUnderElevation: 20,

      // ),
      body: CustomScrollView(shrinkWrap: true, reverse: true, slivers: [
        // physics: FixedExtentScrollPhysics(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildInputField('Name', Colors.deepPurple),
                buildInputField('Username', Colors.deepPurple),
                buildInputField('Bio', Colors.deepPurple),
                buildInputField('Category', Colors.deepPurple),
                buildInputField('Gender', Colors.deepPurple),
                buildInputField('Pronouns', Colors.deepPurple),
                buildInputField('Phone Number', Colors.deepPurple),
                buildInputField('Email', Colors.deepPurple),
                SizedBox(
                  height: 5.h,
                ),
                _saveButton()
              ],
            ),
          ),
        ),
        _buildAppbar(),
      ]),
    );
  }

  Widget buildInputField(String title, Color borderColor) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: 380.w,
            height: 30.h,
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

class _saveButton extends StatelessWidget {
  const _saveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60.w),
      height: 53.h,
      width: 270.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: const Color.fromRGBO(217, 217, 217, 1),
        ),
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(139, 74, 228, 1),
          Color.fromRGBO(206, 126, 243, 1)
        ]),
      ),
      child: Center(
        child: Text(
          "Save",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}

class _buildAppbar extends StatelessWidget {
  const _buildAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 271.h,
      foregroundColor: Colors.pink,
      floating: true,
      // pinned: true,
      // snap: true,
      // backgroundColor: Colors.deepPurple,
      flexibleSpace: FlexibleSpaceBar(
        background: S2CurvedConatiner(),
      ),
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Handle back arrow button press
          },
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
              Get.to(() => SettingScreen());
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
              Get.to(() => SettingScreen());
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle action menu button press
            },
          ),
        ),
      ],
    );
  }
}

Padding usersProfile() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w),
    child: Stack(
      children: [
        Container(
          // color: Colors.black,
          width: 160.w,
          height: 88.h,
        ),
        Positioned(
          left: 0,
          child: CircleAvatar(
            radius: 44.r,
            backgroundColor: const Color.fromARGB(255, 240, 210, 167),
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 44.r,
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
            width: 428.w,
            height: 301.h,
            decoration: const BoxDecoration(
              color: const Color(0xFF6E40E0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(child: usersProfile()),
                  ]),
            )));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 160.47.h); // Starting point
    path.quadraticBezierTo(
      32.5.w,
      235.48.h,
      181.62.w,
      235.48.h,
    );
    path.lineTo(249.69.w, 235.48.h);
    path.quadraticBezierTo(380.w, 235.48.h, size.width, 301.h);
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Return true if the clip path should be recalculated, else false
  }
}
