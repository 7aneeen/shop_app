import 'package:flutter/material.dart';
import 'package:shop_app/features/homescreen/presentation/views/show_screen.dart';
import 'package:shop_app/features/information/presentation/views/about_us_screen.dart';
import 'package:shop_app/features/information/presentation/views/developer_screen.dart';
import 'package:shop_app/features/information/presentation/views/profile_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int newvalue = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      ShowScreen(),
      ProfileScreen(),
      DeveloperScreen(),
      AboutUsScreen()
    ];

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurpleAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[600],
          type: BottomNavigationBarType.fixed,
          currentIndex: newvalue,
          onTap: (int y) {
            setState(() {
              newvalue = y;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.developer_mode), label: "Developer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline), label: "About Us"),
          ],
        ),
        body: IndexedStack(
          index: newvalue,
          children: screens,
        ));
  }
}