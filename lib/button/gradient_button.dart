import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientButton extends StatelessWidget {
  final Function callBackFunction;
  final String buttonName;
  const GradientButton(
      {super.key, required this.callBackFunction, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: 48.h,
          width: 380.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
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
              buttonName,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
