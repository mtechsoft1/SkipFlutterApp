import 'package:flutter/material.dart';
import 'package:Skip_The_Task/responsive/device_dimensions.dart';
import 'package:Skip_The_Task/screens/instant_request_side/instant_request_any_tasker.dart';
import 'package:Skip_The_Task/screens/instant_request_side/instant_request_index_screen.dart';
import 'package:Skip_The_Task/widgets/build_bottom_nav_bar.dart';
import 'package:Skip_The_Task/widgets/left_side_drawer.dart';

class InstantRequestMainScreen extends StatefulWidget {
  const InstantRequestMainScreen({super.key});

  @override
  State<InstantRequestMainScreen> createState() =>
      _InstantRequestMainScreenState();
}

class _InstantRequestMainScreenState extends State<InstantRequestMainScreen> {
  @override
  Widget build(BuildContext context) {
    bool isWeb(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    return SafeArea(
      child: Scaffold(
        drawer: buildLeftDrawer(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            //color: Colors.amber,
            decoration: const BoxDecoration(
                //shape: BoxShape.circle,
                color: Color.fromARGB(255, 252, 252, 252)),
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
                                child: Text('Instant Request',
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
                    height: DeviceDimensions.screenHeight(context) * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/choosetasker.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black
                              .withOpacity(0.2), // Adjust opacity as needed
                          BlendMode.darken, // Choose desired BlendMode
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      // border: Border.all(),
                    ),
                    child: Stack(children: [
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    InstantRequestIndexScreen(),
                              ),
                            );
                          },
                          child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.9,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.1,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 92, 35, 105),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12))),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Choose Tasker',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.06,
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ),
                    ])),

                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),

                Container(
                    width: DeviceDimensions.screenWidth(context) * 0.9,
                    height: DeviceDimensions.screenHeight(context) * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/instanttasker.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black
                              .withOpacity(0.2), // Adjust opacity as needed
                          BlendMode.darken, // Choose desired BlendMode
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      // border: Border.all(),
                    ),
                    child: Stack(children: [
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    InstantRequestAnyTaskerScreen(),
                              ),
                            );
                          },
                          child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.9,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.1,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 249, 195, 57),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12))),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('Instant Tasker',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        color: Colors.white,
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.06)),
                              )),
                        ),
                      ),
                    ])),

                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
                //team carousel
              ],
            ),
          ),
        ),
        bottomNavigationBar: buildBottomNavBar(context),
      ),
    );
  }
}
