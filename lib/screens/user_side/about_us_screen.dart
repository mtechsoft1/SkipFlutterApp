import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Skip_The_Task/responsive/device_dimensions.dart';
import 'package:Skip_The_Task/screens/user_side/hiring_tasker_screen.dart';
import 'package:Skip_The_Task/widgets/about_us_widget.dart';
import 'package:Skip_The_Task/widgets/build_bottom_nav_bar.dart';
import 'package:Skip_The_Task/widgets/left_side_drawer.dart';
import 'package:Skip_The_Task/widgets/our_services_widget.dart';
//import 'package:task_rabbit/widgets/our_services_grid.dart';
import 'package:Skip_The_Task/widgets/popular_projects_widget.dart';
import 'package:Skip_The_Task/widgets/build_team_carousel_widget.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
                                child: Text('About Us',
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

                SizedBox(height: DeviceDimensions.screenHeight(context) * 0.03),
                //top image

                //body
                Container(
                  //color: Colors.amber,
                  width: DeviceDimensions.screenWidth(context) * 0.9,
                  //height: DeviceDimensions.screenHeight(context) * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),

                      //meet our taskers
                      Container(
                          width: DeviceDimensions.screenWidth(context) * 0.9,
                          height: DeviceDimensions.screenHeight(context) * 0.3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/imageaboutus.png')))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Meet Our Taskers',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Roboto-Medium',
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.06),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'With a team of highly trained and certified electricians, we are dedicated to delivering top-notch electrical solutions for both residential and commercial clients. Our technicians are not only experts in their field, but they are also passionate about ensuring your electrical systems are safe, efficient, and up to code.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.04)),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),
                      //about us
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 92, 35, 105),
                            borderRadius: BorderRadius.circular(20)),
                        height: DeviceDimensions.screenHeight(context) * 0.99,
                        width: DeviceDimensions.screenWidth(context) * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Container(
                                      width: DeviceDimensions.screenWidth(
                                              context) *
                                          0.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color.fromARGB(255, 221, 73,
                                              255), // Border color
                                          width: 2, // Border width
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/about.jpeg',
                                          width: DeviceDimensions
                                                  .responsiveSize(context) *
                                              0.25, // Adjust the width as needed
                                          height:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.40,
                                          fit: BoxFit
                                              .fitWidth, // Adjust the height as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Assembly',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto-Bold',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.05,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.4,
                                        child: Text(
                                          "Discover excellence at your fingertips with Skip The Task From skilled handyman to expert cleaners, reliable HVAC technicians, and accomplished lawyers, discover top-notch professionals for every task. Whether it's home improvement, event services, or personal care, our platform seamlessly connects you with trusted experts to get the job done right. Join us today and unlock unparalleled convenience, quality, and peace of mind.",
                                          style: TextStyle(
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.028,
                                              color: Colors.white),
                                          softWrap: true,
                                          //maxLines: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //     height: 10), // Add some vertical space between the rows
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            20, // Diameter of the circular container
                                        height: 20,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(255, 146, 108,
                                                155) // Adjust the color as needed
                                            ),
                                        child: Center(
                                          child: Icon(
                                            Icons.check, // Your icon here
                                            color: Colors
                                                .white, // Adjust the icon color as needed
                                            size:
                                                15, // Adjust the icon size as needed
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            'Assemble or disassemble furniture items by unboxing, building, and any cleanup.',
                                            style: TextStyle(
                                                fontSize: DeviceDimensions
                                                        .responsiveSize(
                                                            context) *
                                                    0.028,
                                                color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ),

                                      // Now Trending: Curved sofas, computer desks, and sustainable materials.
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            20, // Diameter of the circular container
                                        height: 20,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(255, 146, 108,
                                                155) // Adjust the color as needed
                                            ),
                                        child: Center(
                                          child: Icon(
                                            Icons.check, // Your icon here
                                            color: Colors
                                                .white, // Adjust the icon color as needed
                                            size:
                                                15, // Adjust the icon size as needed
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            'Now Trending: Curved sofas, computer desks, and sustainable materials',
                                            style: TextStyle(
                                                fontSize: DeviceDimensions
                                                        .responsiveSize(
                                                            context) *
                                                    0.028,
                                                color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ),

                                      // Now Trending: Curved sofas, computer desks, and sustainable materials.
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(
                            //     height:
                            //         10), // Add some vertical space between the text and container
                            SizedBox(
                                width: DeviceDimensions.screenWidth(context) *
                                    0.35,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 67, 27, 77),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text('Book Now',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        Icon(
                                          Icons
                                              .arrow_right_alt, // Specify the icon you want to use
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                            Center(
                              child: Container(
                                width: DeviceDimensions.screenWidth(context) *
                                    0.8, // Match the width of the parent
                                //height: screenHeight * 0.2, // Adjust the height as needed
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),

                                child: Center(
                                  child: Table(
                                    children: const [
                                      TableRow(
                                        children: [
                                          AboutUsWidget(
                                            text1: '200+',
                                            imagePath:
                                                'assets/images/clients.png',
                                            text2: 'Happy Clients',
                                          ),
                                          AboutUsWidget(
                                            text1: '20+',
                                            imagePath:
                                                'assets/images/awards.png',
                                            text2: 'Winning Awards',
                                          ),
                                        ],
                                      ),
                                      TableRow(
                                        children: [
                                          AboutUsWidget(
                                            text1: '10 K+',
                                            imagePath:
                                                'assets/images/projects.png',
                                            text2: 'Complete Projects',
                                          ),
                                          AboutUsWidget(
                                            text1: '900+',
                                            imagePath:
                                                'assets/images/review.png',
                                            text2: 'Client Reviews',
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height:
                              DeviceDimensions.screenHeight(context) * 0.02),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Enjoy Special Benefits',
                                textAlign: TextAlign.left,
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
                            width: DeviceDimensions.screenWidth(context) * 0.9,
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
                                    child:
                                        Image.asset('assets/images/price.png'),
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
                                        borderRadius: BorderRadius.circular(8),
                                        color:
                                            Color.fromARGB(255, 180, 154, 186),
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
                            width: DeviceDimensions.screenWidth(context) * 0.9,
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
                                        borderRadius: BorderRadius.circular(8),
                                        color:
                                            Color.fromARGB(255, 180, 154, 186),
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
                            width: DeviceDimensions.screenWidth(context) * 0.9,
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
                                        borderRadius: BorderRadius.circular(8),
                                        color:
                                            Color.fromARGB(255, 180, 154, 186),
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
                //team carousel
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
