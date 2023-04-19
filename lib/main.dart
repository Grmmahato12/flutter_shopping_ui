import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_ui_project/common_widget/corousel_discount_card.dart';
import 'package:shopping_ui_project/screens/bottomnavbarscreen.dart';
import 'package:shopping_ui_project/screens/detailspage.dart';
import 'package:shopping_ui_project/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
    return MaterialApp(
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      
      ),
      home: child,
    );
      
      },
      child:  
      BottomNavBarScreen(),
     //HomeScreen(),
     //DetailsPage(),
      
    );
  }
}

