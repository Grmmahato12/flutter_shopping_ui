import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCakeCard extends StatelessWidget {
  final String image;
  final String name;
  final String rs;
  final String oldRs;
  final String ratting;
  const CustomCakeCard(
      {super.key,
      required this.image,
      required this.name,
      required this.rs,
      required this.oldRs,
      required this.ratting});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 5, bottom: 5),
      child: Card(
        // margin: EdgeInsets.only(left: 14,top: 10),
        elevation: 3,
        color: Color(0xFFF8F8F8),

        child: Container(
          width: 160.w,
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFF8F8F8),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset(
                  image,
                  height: 122.h,
                  width: 160.w,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Text(
                        name,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(
                              0xFF33363F,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          '\u{20B9}${rs}',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(
                                0xFF33363F,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\u{20B9}${oldRs}',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(
                                0xFF828282,
                              ),
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
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
                          width: 10,
                        ),
                        Text(
                          ratting,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF33363F)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
