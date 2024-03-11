import 'package:flutter/material.dart';
import 'package:untitled2/constant/colors_value.dart';

class AdjustableGradientButton extends StatelessWidget {
  final Function voidCallback;
  final String buttonName;
  final double buttonHeight;
  final double buttonWidth;
  const AdjustableGradientButton({
    required this.voidCallback,
    super.key,
    required this.buttonName,
    required this.buttonHeight,
    required this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => voidCallback,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [Color(0xFF8B4AE4), Color(0xFFCE7EF3)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          border: Border.all(color: Colors.white, width: 1.3),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Center(
            child: Row(
              children: [
                Text(
                  buttonName,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 16,
                  height: 16,
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
