import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/widgets/bottom_nav_bar_items.dart';
//import 'package:your_project_name/device_dimensions.dart'; // Import the utility class

Widget buildBottomNavBar(BuildContext context) {
  return Container(
    width: DeviceDimensions.screenWidth(context),
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 146, 108, 153),
    ),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavBarItem(0, 'assets/images/home_nav_icon.png'),
            BottomNavBarItem(1, 'assets/images/service_nav_icon.png'),
            BottomNavBarItem(2, 'assets/images/activity_nav_icon.png'),
            BottomNavBarItem(3, 'assets/images/account_nav_icon.png'),
          ],
        ),
      ),
    ),
  );
}
