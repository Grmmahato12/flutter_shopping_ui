import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsContainer extends StatelessWidget {
  final String name;
  final String address;
  final String time;
  final String ratings;
  final String km;
  const DetailsContainer(
      {super.key,
      required this.name,
      required this.address,
      required this.time,
      required this.ratings,
      required this.km});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: Material(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF4E3D67)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                  iconSize: 25,
                  color: Color(0xFFF55A51),
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  address,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF776B8A)),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.timer,
                  size: 20,
                  color: Color(0xFFF55A51),
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4E3D67)),
                ),
              ],
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 15.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD7685),
                  ),
                  child: Image.asset(
                    "lib/images/star.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ratings,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF4E3D67)),
                ),
                SizedBox(
                  width: 1,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "More info >",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFF55A51)),
                    )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.directions_bike,
                  size: 15,
                  color: Color(0xFFF55A51),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  km,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF4E3D67)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 91.h,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF55A51),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 15,
                      color: Color(0xFFFFFFFF),
                    ),
                    Text(
                      "Schedule",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
