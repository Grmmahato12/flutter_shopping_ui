import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 340.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFFFEAE9),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF55A51),
              ),
              child: Icon(
                Icons.star,
                size: 30,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "UPTO",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4E3D67)),
                ),
                Text("40% OFF",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4E3D67))),
              ],
            ),
            SizedBox(
              width: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("1/3"),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ));
  }
}
