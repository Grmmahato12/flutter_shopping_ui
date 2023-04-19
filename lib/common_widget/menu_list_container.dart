import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuListContainer extends StatelessWidget {
  const MenuListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Color(0xFFFFFFFF),
                  color: Colors.transparent,
                  border: Border.all(
                    width: 1.0,
                  )),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    size: 15,
                    color: Color(0xFFF55A51),
                  ),
                  Text(
                    "Sort",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4E3D67)),
                  ),
                  DropdownButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: Color(0xFFF55A51),
                    ),
                    items: [],
                    onChanged: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
