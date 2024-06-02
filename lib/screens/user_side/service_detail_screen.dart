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

class ServiceDetailScreen extends StatefulWidget {
  const ServiceDetailScreen({super.key});

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  final List<String> serviceDetail = [
    'Restoring Functionality, One Repair',
    'Repairing your Problems Restoring',
    'Quality Repair Services You Can',
    'Repairing With Care Exceeding Expectations',
    'Reliable Repair',
    'Perfect Restore',

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
                                                  0.06,
                                            ),
                                            onPressed: () {
                                              Scaffold.of(context).openDrawer();
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
                                child: Text('Service Detail',
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
                                height: DeviceDimensions.screenHeight(context) *
                                    0.01),
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
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),
                      Column(
                        children: [
                          SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.5,
                            child: ListView.builder(
                              itemCount: serviceDetail.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 6),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12),
                                  decoration: BoxDecoration(
                                      //color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all()),
                                  child: Text(
                                    serviceDetail[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.035,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: DeviceDimensions.screenWidth(context) * 0.9,
                            height:
                                DeviceDimensions.screenHeight(context) * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/tasker-blue.png'), // Replace with your image path
                                fit: BoxFit.cover, // Adjust the fit as needed
                              ),
                            ),
                          ),
                          Positioned(
                            top: 150,
                            left: 40,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.7,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.25,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 29, 15, 44)
                                    .withOpacity(0.6),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Have any Qustion?\nContact Us Now',
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.05,
                                    ),
                                  ),
                                  Text(
                                    'Call :012548325',
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.07,
                                    ),
                                  ),
                                  Text(
                                    'skipthetask@open.com',
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.05,
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
                      Container(
                        width: DeviceDimensions.screenWidth(context) * 0.45,
                        height: DeviceDimensions.screenHeight(context) * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 180, 154, 186),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'DOWNLOAD PDF',
                              style: TextStyle(
                                  fontFamily: 'Roboto-Medium',
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.04,
                                  color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.white)
                          ],
                        ),
                      ),
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),
                      Container(
                        width: DeviceDimensions.screenWidth(context) * 0.9,
                        height: DeviceDimensions.screenHeight(context) * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/tasker-orange.png'), // Replace with your image path
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Repairing Your Problem Restoring Your Peace',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.04)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                          child: Text(
                              'Repair is a specialized field that focuses on fixing and restoring objects or systems back to their original working condition It involves diagnosing issues replacing faulty parts and ensuring optimal functionality. Repair services are maintaining the longevity of various products equipment and infrastructure',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.035)),
                        ),
                      ),
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),
                      Stack(
                        children: [
                          Container(
                            width: DeviceDimensions.screenWidth(context) * 0.9,
                            height:
                                DeviceDimensions.screenHeight(context) * 0.16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 239, 233, 240)),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.25,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 92, 35, 105),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/bestquality.png',
                                    fit: BoxFit.contain,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 85,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.65,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Best Quality',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Flexible(
                                      child: Text(
                                          'Repair is a specialized field that focuses on fixing and restoring object',
                                          textAlign: TextAlign.left,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.035,
                                          )),
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
                      Stack(
                        children: [
                          Container(
                            width: DeviceDimensions.screenWidth(context) * 0.9,
                            height:
                                DeviceDimensions.screenHeight(context) * 0.16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 239, 233, 240)),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.25,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 92, 35, 105),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/team.png',
                                    fit: BoxFit.contain,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 85,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.65,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Teamwork',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Flexible(
                                      child: Text(
                                          'We list tow cars from all major car manufacturers including BMW, Land Rover, Jaguar, Honda and Volvo! etc.',
                                          textAlign: TextAlign.left,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.035,
                                          )),
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
                      Stack(
                        children: [
                          Container(
                            width: DeviceDimensions.screenWidth(context) * 0.9,
                            height:
                                DeviceDimensions.screenHeight(context) * 0.16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 239, 233, 240)),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.25,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 92, 35, 105),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/security.png',
                                    fit: BoxFit.contain,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 85,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.65,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Security',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Flexible(
                                      child: Text(
                                          'Our affiliates are committed to providing you with the best selection of mechanics at affordable prices.',
                                          textAlign: TextAlign.left,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.035,
                                          )),
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
                      Stack(
                        children: [
                          Container(
                            width: DeviceDimensions.screenWidth(context) * 0.9,
                            height:
                                DeviceDimensions.screenHeight(context) * 0.16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 239, 233, 240)),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.25,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 92, 35, 105),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/commitment.png',
                                    fit: BoxFit.contain,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 85,
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.65,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.12,
                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Commitment',
                                        maxLines: 2,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Flexible(
                                      child: Text(
                                          'Our industry leading motor dealers are here to help you find the most suitable mechanic for you.',
                                          textAlign: TextAlign.left,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.035,
                                          )),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Bringing Back The Functionality You Need',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.04)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                          child: Text(
                              'Repair is a specialized field that focuses on fixing and restoring objects or systems back to their original working condition It involves diagnosing issues replacing faulty parts and ensuring optimal functionality. Repair services are maintaining the longevity of various products equipment and infrastructure',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.035)),
                        ),
                      ),
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),
                      Stack(
                        children: [
                          Container(
                            width: DeviceDimensions.screenWidth(context) * 0.9,
                            height:
                                DeviceDimensions.screenHeight(context) * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/tasker-light.png'), // Replace with your image path
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.3),
                                  BlendMode.darken,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 130,
                            child: Container(
                              width: DeviceDimensions.responsiveSize(context) *
                                  0.2,
                              height: DeviceDimensions.responsiveSize(context) *
                                  0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 239, 233, 240),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/tri.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Bringing Back The Functionality You Need',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.04)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                          child: Text(
                              'Repair is a specialized field that focuses on fixing and restoring objects or systems back to their original working condition It involves diagnosing issues replacing faulty parts and ensuring optimal functionality. Repair services are maintaining the longevity of various products equipment and infrastructure',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.035)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Our Professional Team',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.05)),
                          ),
                          SizedBox(
                            width: DeviceDimensions.screenWidth(context) * 0.3,
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           TaskerFormTwoScreen()),
                                // );
                                // print('press');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                    255,
                                    92,
                                    35,
                                    105), // Set the background color of the button
                                // Set the text color
                              ),
                              child: const Text(
                                'View All',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // ),
                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
                Container(
                    width: DeviceDimensions.screenWidth(context),
                    //height: DeviceDimensions.screenWidth(context),
                    child: TeamCarouselWidget()),
                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
              ],
            ),
          ),
        ),
        bottomNavigationBar: buildBottomNavBar(context),
      ),
    );
  }
}
