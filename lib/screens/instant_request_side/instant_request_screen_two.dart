import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Skip_The_Task/responsive/device_dimensions.dart';
import 'package:Skip_The_Task/screens/user_side/hiring_tasker_screen.dart';
import 'package:Skip_The_Task/widgets/about_us_widget.dart';
import 'package:Skip_The_Task/widgets/bottom_popUp.dart';
import 'package:Skip_The_Task/widgets/build_bottom_nav_bar.dart';
import 'package:Skip_The_Task/widgets/left_side_drawer.dart';
import 'package:Skip_The_Task/widgets/our_services_widget.dart';
//import 'package:Skip_The_Task/widgets/our_services_grid.dart';
import 'package:Skip_The_Task/widgets/popular_projects_widget.dart';
import 'package:Skip_The_Task/widgets/build_team_carousel_widget.dart';
import 'package:Skip_The_Task/widgets/tasker_widget.dart';

class InstantRequestScreenTwo extends StatefulWidget {
  const InstantRequestScreenTwo({super.key});

  @override
  State<InstantRequestScreenTwo> createState() =>
      _InstantRequestScreenTwoState();
}

class _InstantRequestScreenTwoState extends State<InstantRequestScreenTwo> {
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
                    // height: DeviceDimensions.screenHeight(context) * 0.25,
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
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.065,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color.fromARGB(255, 204, 187, 209)
                                        .withOpacity(0.5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Menu bar
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 2),
                                      child: Container(
                                        width: DeviceDimensions.responsiveSize(
                                                context) *
                                            0.1,
                                        height: DeviceDimensions.responsiveSize(
                                                context) *
                                            0.1,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 239, 233, 240)
                                                  .withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Builder(
                                            builder: (BuildContext context) {
                                          return IconButton(
                                            icon: Icon(
                                              Icons.menu,
                                              color: Colors.white,
                                              size: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.05,
                                            ),
                                            onPressed: () {
                                              Scaffold.of(context).openDrawer();
                                            },
                                          );
                                        }),
                                      ),
                                    ),
                                    // SizedBox(
                                    //     width: DeviceDimensions.screenWidth(
                                    //             context) *
                                    //         0.005),
                                    // Logo
                                    SizedBox(
                                      width: DeviceDimensions.screenWidth(
                                              context) *
                                          0.53,
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          child: Image.asset(
                                            'assets/images/skip-the-task-logo.jpeg',
                                            height: 45.0, // Adjust as needed
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    // // Profile icon button
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.phone,
                                            color: Colors.white,
                                            size:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
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
                                            size:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.05,
                                          ),
                                          onPressed: () {
                                            // Handle profile button press
                                          },
                                        ),
                                        // IconButton(
                                        //   icon: Icon(
                                        //     Icons.person,
                                        //     color: Colors.white,
                                        //     size: responsiveSize * 0.04,
                                        //   ),
                                        //   onPressed: () {
                                        //     // Handle profile button press
                                        //   },
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.01),
                            SizedBox(
                              child: Center(
                                child: Text('Get Tasker',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.05)),
                              ),
                            ),
                            //SizedBox(height: screenHeight * 0.001),
                          ],
                        )
                      ],
                    )),

                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.03),
                //top image

                //body
                Container(
                    width: DeviceDimensions.screenWidth(context) * 0.9,
                    height: DeviceDimensions.screenHeight(context) * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Filter',
                                style: TextStyle(
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.05),
                              ),
                              SizedBox(
                                width: DeviceDimensions.screenWidth(context) *
                                    0.03,
                              ),
                              Image.asset('assets/images/filter_icon.png'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Task',
                              style: TextStyle(
                                  fontFamily: 'Roboto-Medium',
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.04)),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.05,
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: DropdownButton<String>(
                                  value: 'HVAC',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ), // Initially selected value
                                  onChanged: (String? newValue) {
                                    // Handle dropdown value change
                                  },
                                  items: <String>[
                                    'HVAC',
                                    'Cleaning',
                                    'Mounting',
                                    'Moving',
                                  ] // Dropdown items
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),

                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
                Container(
                    width: DeviceDimensions.screenWidth(context),
                    color: Color.fromARGB(255, 239, 233, 240),
                    child: Column(
                      children: [
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.02),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              child: SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.05,
                                width:
                                    DeviceDimensions.screenWidth(context) * 0.8,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    labelText: 'enter pick point',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.02),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              child: SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.05,
                                width:
                                    DeviceDimensions.screenWidth(context) * 0.8,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    labelText: 'where to?',
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(16),
                                      ),
                                    ),
                                    builder: (BuildContext context) {
                                      return BottomSheetContent();
                                    },
                                  );
                                },
                                child: Image.asset('assets/images/plus.png'))
                          ],
                        ),
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.02),
                        Image.asset('assets/images/map.png', fit: BoxFit.cover),
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.03),
                        Container()
                      ],
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: buildBottomNavBar(context),
      ),
    );
  }
}
