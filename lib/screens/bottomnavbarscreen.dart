import 'package:flutter/material.dart';
import 'package:shopping_ui_project/screens/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      // ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (currentIndex) {
          setState(() {
            _selectedIndex = currentIndex;
          });
        },
        children: [
          HomeScreen(),
          // CartScreen(),
          // OrderScreen(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle:
              const TextStyle(color: Color(0xFF273B4A), fontSize: 15),
          backgroundColor: const Color(0xFFFFFFFF),
          //fixedColor: Color(0xFFFFFFFF),
          unselectedItemColor: Color(0xFF273B4A),
          showUnselectedLabels: true,
          selectedLabelStyle:
              const TextStyle(color: Color(0xFFFD7685), fontSize: 15),
          selectedItemColor: Color(0xFFFD7685),
          currentIndex: _selectedIndex,
          onTap: (currentIndex) {
            setState(() {
              _selectedIndex = currentIndex;
            });

            _pageController.animateToPage(
              currentIndex,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: "home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 25,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 25,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 25,
              ),
              label: "Order",
            ),
          ]),
    );
  }
}
