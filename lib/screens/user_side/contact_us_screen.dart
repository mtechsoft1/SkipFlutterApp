import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Skip_The_Task/responsive/device_dimensions.dart';
import 'package:Skip_The_Task/screens/user_side/hiring_tasker_screen.dart';
import 'package:Skip_The_Task/widgets/about_us_widget.dart';
import 'package:Skip_The_Task/widgets/build_bottom_nav_bar.dart';
import 'package:Skip_The_Task/widgets/left_side_drawer.dart';
import 'package:Skip_The_Task/widgets/our_services_widget.dart';
//import 'package:Skip_The_Task/widgets/our_services_grid.dart';
import 'package:Skip_The_Task/widgets/popular_projects_widget.dart';
import 'package:Skip_The_Task/widgets/build_team_carousel_widget.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
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
        body: ListView(
          children: <Widget>[
            Container(
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
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.03),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Container(
                                  height:
                                      DeviceDimensions.screenHeight(context) *
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
                                          width:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.1,
                                          height:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.1,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                    255, 239, 233, 240)
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
                                                        .responsiveSize(
                                                            context) *
                                                    0.06,
                                              ),
                                              onPressed: () {
                                                Scaffold.of(context)
                                                    .openDrawer();
                                              },
                                            );
                                          }),
                                        ),
                                      ),
                                      SizedBox(
                                          width: DeviceDimensions.screenWidth(
                                                  context) *
                                              0.1),
                                      // Logo
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Image.asset(
                                          'assets/images/skip-the-task-logo.jpeg',
                                          height: 40.0, // Adjust as needed
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
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.01),
                              SizedBox(
                                child: Center(
                                  child: Text('Contact Us',
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
                              SizedBox(
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.01),
                              //SizedBox(height: screenHeight * 0.001),
                            ],
                          )
                        ],
                      )),

                  SizedBox(
                      height: DeviceDimensions.screenHeight(context) * 0.03),

                  //body
                  Container(
                    //color: Colors.amber,
                    width: DeviceDimensions.screenWidth(context) * 0.9,
                    //height: DeviceDimensions.screenHeight(context) * 0.9,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.02),

                        //meet our taskers

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Enjoy Special Benefits',
                                  //textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.06)),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.02),
                        Column(
                          children: [
                            Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.9,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 92, 35, 105)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Image.asset(
                                          'assets/images/price.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        'Affordable Prices',
                                        style: TextStyle(
                                            fontFamily: 'Roboto-Medium',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.04,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        'What do you Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.03,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.35,
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.05,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color.fromARGB(
                                              255, 180, 154, 186),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Learn More',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto-Medium',
                                                  fontSize: DeviceDimensions
                                                          .responsiveSize(
                                                              context) *
                                                      0.03,
                                                  color: Colors.white),
                                            ),
                                            Icon(Icons.arrow_forward,
                                                color: Colors.white)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.01),
                            Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.9,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 92, 35, 105)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Image.asset(
                                          'assets/images/thunder.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        'Fast and Reliable',
                                        style: TextStyle(
                                            fontFamily: 'Roboto-Medium',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.04,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        'What do you Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.03,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.35,
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.05,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color.fromARGB(
                                              255, 180, 154, 186),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Learn More',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto-Medium',
                                                  fontSize: DeviceDimensions
                                                          .responsiveSize(
                                                              context) *
                                                      0.03,
                                                  color: Colors.white),
                                            ),
                                            Icon(Icons.arrow_forward,
                                                color: Colors.white)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.01),
                            Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.9,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 92, 35, 105)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Image.asset(
                                          'assets/images/emergency.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        '24/7 Emergency',
                                        style: TextStyle(
                                            fontFamily: 'Roboto-Medium',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.04,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        'What do you Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.030,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.35,
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.05,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color.fromARGB(
                                              255, 180, 154, 186),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Learn More',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto-Medium',
                                                  fontSize: DeviceDimensions
                                                          .responsiveSize(
                                                              context) *
                                                      0.03,
                                                  color: Colors.white),
                                            ),
                                            Icon(Icons.arrow_forward,
                                                color: Colors.white)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Contact Us Today - Let Us Assist You In your work!',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.06)),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                  'Trust us to handle your problem, so you can focus on what matters most.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.035)),
                            ),
                          ],
                        ),
                        Container(
                          //color: Colors.amber,
                          width: DeviceDimensions.screenWidth(context) * 0.9,
                          height: DeviceDimensions.screenHeight(context) * 0.5,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                //color: Colors.red,
                                width:
                                    DeviceDimensions.screenWidth(context) * 0.9,
                                height: DeviceDimensions.screenHeight(context) *
                                    0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/clean-tasker.png',
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                top: 60,
                                left: 30,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 239, 233, 240),
                                  ),
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.75,
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.12,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                  'assets/images/phone.png'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Call Us',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Roboto-Medium',
                                                          fontSize: DeviceDimensions
                                                                  .responsiveSize(
                                                                      context) *
                                                              0.05)),
                                                  Text(
                                                      'Mobile +5623 - 080 - 59632'),
                                                  Text(
                                                      'Hotline +1234 - 853 - 365'),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                              Positioned(
                                top: 170,
                                left: 30,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 239, 233, 240),
                                  ),
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.75,
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.12,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                  'assets/images/email.png'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Email',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Roboto-Medium',
                                                          fontSize: DeviceDimensions
                                                                  .responsiveSize(
                                                                      context) *
                                                              0.05)),
                                                  Text('skipthetask@open.com'),
                                                  Text('info@example.com'),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                              Positioned(
                                top: 280,
                                left: 30,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 239, 233, 240),
                                  ),
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.75,
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.12,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                  'assets/images/location_icon.png'),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0),
                                                  child: Text('Location',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Roboto-Medium',
                                                          fontSize: DeviceDimensions
                                                                  .responsiveSize(
                                                                      context) *
                                                              0.05)),
                                                ),
                                                SizedBox(
                                                  width: DeviceDimensions
                                                          .screenWidth(
                                                              context) *
                                                      0.6,
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Text(
                                                      'Dhaka 102, utl 1216, road 45 stert linehouse street',
                                                    ),
                                                  ),
                                                ),
                                                // Text(
                                                //     'Hotline +1234 - 853 - 365'),
                                              ],
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ),

                  SizedBox(
                      height: DeviceDimensions.screenHeight(context) * 0.02),

                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(255, 92, 35, 105),
                      ),
                      width: DeviceDimensions.screenWidth(context),
                      height: DeviceDimensions.screenHeight(context) * 0.20,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                'Revitalize Your Area with Our Dedicated Experts',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.06,
                                    color: Colors.white)),
                            SizedBox(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.9,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 146, 108, 155)),
                                  child: Text('Book An Appointment',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto-Medium',
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.04,
                                      ))),
                            )
                          ])),
                  SizedBox(
                      height: DeviceDimensions.screenHeight(context) * 0.02),

                  Container(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 146, 108, 155),
                            ),
                            width: DeviceDimensions.screenWidth(context),
                            height:
                                DeviceDimensions.screenHeight(context) * 0.1,
                          ),
                        ),
                        SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.02),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/thunderimagevector.png'),
                                fit: BoxFit.contain,
                                colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(
                                      0.005), // Adjust opacity as needed
                                  BlendMode.darken, // Choose desired BlendMode
                                ),
                              )),
                          width: DeviceDimensions.screenWidth(context),
                          height: DeviceDimensions.screenHeight(context) * 0.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white.withOpacity(0.5),
                          ),
                          width: DeviceDimensions.screenWidth(context),
                          height: DeviceDimensions.screenHeight(context) * 0.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                    "Don't Hesitate To Reach Out To Us Today!",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.06,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 8),
                                child: Text(
                                  'Name',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                ),
                                child: SizedBox(
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.05,
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.9,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                      ),
                                      labelText: 'Enter Name ...',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 8),
                                child: Text(
                                  'Phone / Email',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                ),
                                child: SizedBox(
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.05,
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.9,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                      ),
                                      labelText: 'Enter Phone / Email ...',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 8),
                                child: Text(
                                  'Choose Service',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.001,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                ),
                                child: Container(
                                  height:
                                      DeviceDimensions.screenHeight(context) *
                                          0.05,
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.9,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value:
                                          'Choose service', // Initially selected value
                                      onChanged: (String? newValue) {
                                        // Handle dropdown value change
                                      },
                                      items: <String>[
                                        'Choose service',
                                        'none',
                                        'cleaning'
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
                              SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.001,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 92, 35, 105)),
                                    child: Text('Submit',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto-Medium'))),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: buildBottomNavBar(context),
      ),
    );
  }
}
