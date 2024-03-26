import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TileContainer extends StatelessWidget {
  const TileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 247.w, // Adjust the width as needed

          height: 205.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromARGB(255, 62, 122, 119),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 20.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: TextStyle(fontSize: 14.sp),
              ),
              Text(
                "Lorem Lorem Ipsum is a type of",
                style: TextStyle(fontSize: 12.sp, color: Color(0xFFE6E6E6)),
              ),
            ],
          ),
        ),
        Positioned(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 200.w),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
