import 'package:flutter/material.dart';

Widget BottomNavBarItem(int index, String iconPath) {
  // double isSelected = true;

  return GestureDetector(
    onTap: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50, // Adjust width as needed to increase the size of the box
          height: 50, // Adjust height as needed to increase the size of the box

          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                iconPath,
                width: 30,
                height: 30,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
