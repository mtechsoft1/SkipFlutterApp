import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/screens/user_side/about_us_screen.dart';
import 'package:task_rabbit/screens/user_side/contact_us_screen.dart';
import 'package:task_rabbit/screens/user_side/home_screen.dart';
import 'package:task_rabbit/screens/user_side/our_services_screen.dart';
import 'package:task_rabbit/theme_toggle.dart';

Widget buildLeftDrawer(BuildContext context) {
  return Drawer(
    width: DeviceDimensions.screenWidth(context) * 0.6,
    child: Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ),
            ),
            ListTile(
              title: Row(
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
                  Spacer(), // Flexible space to push the toggle button to the right
                  // ThemeToggle(),
                ],
              ),
            ),
            ListTile(
              title: Text('Home',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize:
                          DeviceDimensions.responsiveSize(context) * 0.04)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Our Services',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize:
                          DeviceDimensions.responsiveSize(context) * 0.04)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OurServicesScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Privacy Policy',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize:
                          DeviceDimensions.responsiveSize(context) * 0.04)),
              onTap: () {
                // Do something
              },
            ),
            ListTile(
              title: Text('About Us',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize:
                          DeviceDimensions.responsiveSize(context) * 0.04)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Settings',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize:
                          DeviceDimensions.responsiveSize(context) * 0.04)),
              onTap: () {
                // Do something
              },
            ),
            ListTile(
              title: Text('Log Out',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize:
                          DeviceDimensions.responsiveSize(context) * 0.04)),
              onTap: () {
                // Do something
              },
            ),
            ListTile(
              title: ElevatedButton(
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
                child:
                    Text('Contact Us', style: TextStyle(color: Colors.white)),
              ),
            ),
            ListTile(
              title: ElevatedButton(
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
              onTap: () {
                // Do something else if needed
              },
            ),
          ],
        ),
        //bottom image
        Positioned(
          left: 0,
          bottom: 0,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/provider.jpeg', // Replace with your image path
              width: DeviceDimensions.screenWidth(context) * 0.7,
              //height: 100,
              fit: BoxFit.fitWidth,
            ),
          ),
        )
      ],
    ),
  );
}
