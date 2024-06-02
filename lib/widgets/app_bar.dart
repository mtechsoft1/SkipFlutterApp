import 'package:flutter/material.dart';
import 'package:Skip_The_Task/responsive/device_dimensions.dart';
import 'package:Skip_The_Task/screens/instant_request_side/instant_request_main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(200.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background-image.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Color.fromARGB(1, 92, 35, 105).withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.03),
              SizedBox(
                height: DeviceDimensions.screenHeight(context) * 0.05,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                            );
                          },
                        ),
                        Spacer(),
                        Center(
                          child: Image.asset(
                            'assets/images/skip-the-task-logo.jpeg',
                            height: 40.0, // Adjust as needed
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width * 0.05,
                              ),
                              onPressed: () {
                                // Handle phone button press
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width * 0.05,
                              ),
                              onPressed: () {
                                // Handle notifications button press
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.005),
              SizedBox(
                height: DeviceDimensions.screenHeight(context) * 0.05,
                child: Center(
                  child: Text(
                    'Largest Booking\nService Platform',
                    style: TextStyle(
                      fontFamily: 'Roboto-Medium',
                      color: Colors.white,
                      fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: DeviceDimensions.screenHeight(context) * 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: DeviceDimensions.screenWidth(context) * 0.5,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'What do you need help with?',
                              hintStyle: TextStyle(
                                fontSize:
                                    DeviceDimensions.screenWidth(context) *
                                        0.035,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 6.0,
                                horizontal: 16.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none,
                              ),
                              suffixIcon: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 92, 35, 105),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.search, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 148, 108, 155),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      InstantRequestMainScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Instant Request',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.025,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
