import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/constant/colors_value.dart';

class AdjustableGradientButton extends StatelessWidget {
  final VoidCallback voidCallback;
  final String buttonName;
  final double buttonHeight;
  final double buttonWidth;
  const AdjustableGradientButton({
    Key? key,
    required this.voidCallback,
    required this.buttonName,
    required this.buttonHeight,
    required this.buttonWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        width: buttonWidth.w,
        height: buttonHeight.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          gradient: const LinearGradient(
            colors: [Color(0xFF8B4AE4), Color(0xFFCE7EF3)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          border: Border.all(color: Colors.white, width: 1.3),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonName,
                  style:
                      TextStyle(fontSize: 9.spMin, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 2.5.w),
                Container(
                  width: 12.w,
                  height: 12.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColorValue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
