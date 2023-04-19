import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IteamContainer extends StatelessWidget {
  IteamContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 42.h,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFF55A51),
          child: Row(
            children: [
              Text(
                "Family Combo",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)),
              ),
              Text(
                "(5 Iteams) ",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
