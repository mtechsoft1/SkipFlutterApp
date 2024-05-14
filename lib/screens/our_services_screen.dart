import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/screens/hiring_tasker_screen.dart';
import 'package:task_rabbit/widgets/about_us_widget.dart';
import 'package:task_rabbit/widgets/build_bottom_nav_bar.dart';
import 'package:task_rabbit/widgets/left_side_drawer.dart';
import 'package:task_rabbit/widgets/our_services_widget.dart';
//import 'package:task_rabbit/widgets/our_services_grid.dart';
import 'package:task_rabbit/widgets/popular_projects_widget.dart';

class OurServicesScreen extends StatefulWidget {
  const OurServicesScreen({super.key});

  @override
  State<OurServicesScreen> createState() => _OurServicesScreenState();
}

class _OurServicesScreenState extends State<OurServicesScreen> {
  final List<String> serviceImages = [
    'assets/images/handyman.png',
    'assets/images/cleaning-list.png',
    'assets/images/hvac.png',
    'assets/images/plumbing.png',
    'assets/images/electrical.png',
    'assets/images/landscaping.png',
    'assets/images/mover.png',
    'assets/images/junk_removal.png',
    'assets/images/barber',
    'assets/images/mechanic.png',
    'assets/images/fitness.png',
    'assets/images/fitness.png',

    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    bool isWeb(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    // double responsiveSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawer: buildLeftDrawer(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            //color: Colors.amber,
            decoration: const BoxDecoration(
              //shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromARGB(255, 204, 187, 209),
                  Color.fromARGB(225, 229, 223, 229)
                ],
                center: Alignment.topRight,
                radius: 10,
              ),
            ),
            child: Column(
              children: [
                //header container
                Container(
                    //height: DeviceDimensions.screenHeight(context) * 0.25,
                    width: DeviceDimensions.screenWidth(context),
                    //color: Colors.amber,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/background-image.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Color.fromARGB(1, 92, 35, 105)
                            .withOpacity(0.4), // Adjust opacity as needed
                        BlendMode.darken, // Choose desired BlendMode
                      ),
                    )),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.03),
                            SizedBox(
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.05,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Container(
                                  //color: Colors.white.withOpacity(0.2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white.withOpacity(0.2)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // Menu bar
                                      SizedBox(
                                        child: Builder(
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
                                        }),
                                      ),
                                      SizedBox(
                                          width: DeviceDimensions.screenWidth(
                                                  context) *
                                              0.1),
                                      // Logo
                                      Center(
                                        child: Image.asset(
                                          'assets/images/skip-the-task-logo.jpeg',
                                          //height: 40.0, // Adjust as needed
                                        ),
                                      ),
                                      Spacer(),
                                      // Profile icon button
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              Icons.phone,
                                              color: Colors.white,
                                              size: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.05,
                                            ),
                                            onPressed: () {
                                              // Handle profile button press
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.notifications,
                                              color: Colors.white,
                                              size: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.05,
                                            ),
                                            onPressed: () {
                                              // Handle profile button press
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.005),

                            SizedBox(
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.05,
                              child: Center(
                                child: Text('Our Services',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        color: Colors.white,
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.06)),
                              ),
                            ),
                            //SizedBox(height: screenHeight * 0.001),
                          ],
                        )
                      ],
                    )),
                //icon container
                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.03),

                Container(
                  //color: Colors.amber,
                  width: DeviceDimensions.screenWidth(context) * 0.9,
                  //height: DeviceDimensions.screenHeight(context) * 0.9,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "When it comes to our services we've got you covered",
                            style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.05)),
                      ),
                      //SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              OurServicesWidget(
                                imagePath: 'assets/images/handyman.png',
                                headingText: 'Handyman',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                              OurServicesWidget(
                                imagePath: 'assets/images/cleaning-list.png',
                                headingText: 'Cleaning',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              OurServicesWidget(
                                imagePath: 'assets/images/hvac.png',
                                headingText: 'HVAC (Heating & Air Condition)',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                              OurServicesWidget(
                                imagePath: 'assets/images/plumbing.png',
                                headingText: 'Plumbing',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              OurServicesWidget(
                                imagePath: 'assets/images/electrical.png',
                                headingText: 'Electrical',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                              OurServicesWidget(
                                imagePath: 'assets/images/landscaping.png',
                                headingText: 'Landscaping',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              OurServicesWidget(
                                imagePath: 'assets/images/mover.png',
                                headingText: 'Mover',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                              OurServicesWidget(
                                imagePath: 'assets/images/junk_removal.png',
                                headingText: 'Junk Removal',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              OurServicesWidget(
                                imagePath: 'assets/images/barber.png',
                                headingText: 'Barber',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                              OurServicesWidget(
                                imagePath: 'assets/images/mechanic.png',
                                headingText: 'Mechanic (Automotive Service)',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              OurServicesWidget(
                                imagePath: 'assets/images/fitness.png',
                                headingText: 'Fitness And Wellness',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                              OurServicesWidget(
                                imagePath: 'assets/images/fitness.png',
                                headingText: 'Fitness And Wellness',
                                detailText:
                                    'Lorem ipsum dolor sit amet consectetur. Tortor sed vel ipsum id amet desi molestie Nonm nhii viverra diam velit elit vivera',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // ),

                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
                //become a provider
              ],
            ),
          ),
        ),
        bottomNavigationBar: buildBottomNavBar(context),
      ),
    );
  }
}
