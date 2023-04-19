import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularButton extends StatelessWidget {
  final iconData;
  final void Function()? onPressed;
  const CircularButton({super.key, this.onPressed, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 38.h,
          width: 38.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            iconData,
            color: Color(0xFFF55A51),
            size: 25,
          ),
        ),
      ),
    );
  }
}
