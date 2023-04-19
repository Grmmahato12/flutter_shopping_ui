import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlowerTasks extends StatelessWidget {
  final String text;
  final String image;
  const FlowerTasks({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        color: Color(0xFFFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60.h,
              width: 68.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: Image.asset(
                image,
                height: 60.h,
                width: 60.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16.sp, color: Color(0xFF33363F)),
            ),
          ],
        ),
      ),
    );
  }
}
