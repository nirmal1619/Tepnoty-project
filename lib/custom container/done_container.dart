
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors_value.dart';

class DoneContainer extends StatelessWidget {
  const DoneContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100.h, // Use .h for height
          width: 100.w, // Use .w for width
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(width: 2.w, color: secondaryColorValue),
          ),
          child: Center(
            child: Container(
              height: 80.h, // Use .h for height
              width: 80.w, // Use .w for width
              decoration: BoxDecoration(
                color: secondaryColorValue,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 40.h, // Use .h for height
                  width: 40.w, // Use .w for width
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.w, color: Colors.white),
                  ),
                  child: Icon(Icons.check),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}