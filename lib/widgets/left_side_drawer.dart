import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/screens/user_side/about_us_screen.dart';
import 'package:task_rabbit/screens/user_side/contact_us_screen.dart';
import 'package:task_rabbit/screens/user_side/home_screen.dart';
import 'package:task_rabbit/screens/user_side/our_services_screen.dart';

Widget buildLeftDrawer(BuildContext context) {
  return Drawer(
    width: DeviceDimensions.screenWidth(context) * 0.6,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.language),
              SizedBox(width: 8), // Space between icon and text
              //Text('EN'),
              //SizedBox(width: 8), // Space between text and dropdown
              DropdownButton<String>(
                value: 'EN', // Initially selected value
                onChanged: (String? newValue) {
                  // Handle dropdown value change
                },
                items: <String>['EN', 'SP', 'FR'] // Dropdown items
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              // Flexible space to push the toggle button to the right
              // ThemeToggle(),
            ],
          ),
        ),
        //home
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
              ),
            ),
          ),
        ),
        //our services
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OurServicesScreen(),
                ),
              );
            },
            child: Text(
              'Our Services',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
              ),
            ),
          ),
        ),
        //privacy policy
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => OurServicesScreen(),
              //   ),
              // );
            },
            child: Text(
              'Privacy Policy',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
              ),
            ),
          ),
        ),
        //about us
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUsScreen(),
                ),
              );
            },
            child: Text(
              'About Us',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
              ),
            ),
          ),
        ),
        //settings
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => OurServicesScreen(),
              //   ),
              // );
            },
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
              ),
            ),
          ),
        ),
        //logout
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => OurServicesScreen(),
              //   ),
              // );
            },
            child: Text(
              'Log Out',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: DeviceDimensions.screenWidth(context) * 0.5,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUsScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 125, 79, 135), // Background color
              ),
              child: Text('Contact Us', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: DeviceDimensions.screenWidth(context) * 0.5,
            child: ElevatedButton(
              onPressed: () {
                // Do something
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 125, 79, 135), // Background color
              ),
              child: Text('Become a Provider',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    ),
  );
}
