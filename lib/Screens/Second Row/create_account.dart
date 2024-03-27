import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled2/button/gradient_button.dart';
import 'package:untitled2/constant/colors_value.dart';
import 'package:untitled2/custom%20container/bubble_container.dart';
import 'package:untitled2/Screens/Second%20Row/registration_succesful.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool termsAndConditionsChecked = true;
  bool privacyPolicyChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   leading: IconButton(
        //     onPressed: () {
        //       Get.back();
        //     },
        //     icon: Icon(Icons.arrow_back_outlined),
        //   ),
        // ),
        body: CustomScrollView(
            // controller: S,
            // shrinkWrap: true,
            // reverse: true,
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: false,
                leading:
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  expandedTitleScale: 1,
                  titlePadding: EdgeInsets.only(left: 24),
                  title: Text(

                    "Create Account",

                    style: TextStyle(
                      fontSize: 24.sp,
                      height: 1.43,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  background: ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      child: BubbleContainer(),
                      height: 260,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF391E5D), Color(0xFF8B4AE4)],
                        ),
                      ),
                    ),
                  ),
                ),
                expandedHeight: 260,
                // floating: false,
                // pinned: true,
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.r)),
                    color: Colors.black.withOpacity(1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w)
                        .copyWith(top: 0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        _buildTextField("Name", nameController),
                        SizedBox(height: 10.h),
                        _buildTextField("Email", emailController),
                        SizedBox(height: 10.h),
                        _buildTextField("Phone Number", phoneNumberController),
                        SizedBox(height: 10.h),
                        _buildTextField("Password", passwordController),
                        SizedBox(height: 10.h),
                        _buildTextField(
                            "Confirm Password", confirmPasswordController),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            SizedBox(
                              height: 5.h,
                              child: Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                                value: termsAndConditionsChecked,
                                onChanged: (value) {
                                  setState(() {
                                    termsAndConditionsChecked = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "Agree to terms and conditions",
                              style: TextStyle(
                                  fontSize: 14.sp, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            SizedBox(
                              height: 5.h,
                              child: Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                                value: privacyPolicyChecked,
                                onChanged: (value) {
                                  setState(() {
                                    privacyPolicyChecked = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "Agree to privacy and policies",
                              style: TextStyle(
                                  fontSize: 14.spMin, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        GradientButton(
                          callBackFunction: () {
                            if (_validateFields() &&
                                _validatePasswords() &&
                                termsAndConditionsChecked &&
                                privacyPolicyChecked) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegistrationScreen(),
                                ),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Validation Error"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (!_validateFields())
                                          Text("All fields are required."),
                                        if (!_validatePasswords())
                                          Text(
                                              "Passwords do not match or are not 4-digit pin."),
                                        if (!termsAndConditionsChecked)
                                          Text(
                                              "Please agree to terms and conditions."),
                                        if (!privacyPolicyChecked)
                                          Text(
                                              "Please agree to privacy policies."),
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          buttonName: "Register",
                        ),
                        SizedBox(height: 3.h),
                        Center(child: Text("or")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                Icons.sms,
                                color: Colors.red,
                              ),
                              height: 48.h,
                              width: 48.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Container(
                              height: 48.h,
                              width: 48.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
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
                ),
              )
            ]
        )
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller) {
    TextInputType keyboardType = TextInputType.text;
    bool isPassword = false;

    if (labelText == "Phone Number") {
      keyboardType = TextInputType.phone;
    } else if (labelText == "Password" || labelText == "Confirm Password") {
      isPassword = true;
      keyboardType = TextInputType.text;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              labelText,
              style: TextStyle(fontSize: 18.sp, color: Color(0xFFD9D9D9)),
            ),
            Text(
              ' *', // Adding a star mark
              style: TextStyle(
                  color: Colors.red), // You can customize the star mark's style
              // .sp extension for font size
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Container(
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10.r), // .r extension for radius
            border: Border.all(color: Color(0XFFD9D9D9)),
          ),
          child: TextField(
            controller: controller,

            keyboardType: keyboardType, // Set keyboard type here
            decoration: InputDecoration(
              hintText: "Enter your ${labelText.toLowerCase()}",
              hintStyle: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 14.sp), // .sp extension for font size
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.w), // .w extension for width
            ),
          ),
        ),
      ],
    );
  }

  bool _validateFields() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneNumberController.text.isEmpty) {
      return false;
    }
    return true;
  }

  bool _validatePasswords() {
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;
    if (password != confirmPassword || password.length != 4) {
      return false;
    }
    return true;
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(0, size.height - 60, 60, size.height - 60);
    path.lineTo(size.width - 60, size.height - 60);
    path.quadraticBezierTo(
        size.width, size.height - 60, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
