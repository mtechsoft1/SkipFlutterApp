import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imageIconPaths = [
    'assets/images/assembly2.png',
    'assets/images/drill.png',
    'assets/images/move.png',
    'assets/images/cleaning2.png',
    'assets/images/arrow.png',
    // Add more image paths as needed
  ];

  final List<String> imagePaths = [
    'assets/images/clean.jpeg',
    'assets/images/clean.jpeg',
    'assets/images/clean.jpeg',
    'assets/images/clean.jpeg',
    // Add more image paths as needed
  ];

  final List<String> texts = [
    'House Cleaning',
    'Kitchen Cleaning',
    'Other',
    'Carpet Cleaning'
    // Add more texts as needed
  ];

  final List<String> roundimagetexts = [
    'Crib Assembly',
    'PAX Assembly',
    'Desk Assembly',
    'Furniture Assembly'
    // Add more texts as needed
  ];

  final List<String> voucherPath = [
    'assets/images/voucher.jpeg',
    'assets/images/voucher.jpeg',
    'assets/images/voucher.jpeg',
    'assets/images/voucher.jpeg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    bool isWeb(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        SizedBox(
          height: screenHeight * 0.25,
          //color: Colors.amber,
          child: Stack(
            children: [
              Container(
                //height: screenHeight * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        const AssetImage('assets/images/background-image.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.deepPurple
                          .withOpacity(0.25), // Adjust opacity as needed
                      BlendMode.darken, // Choose desired BlendMode
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: screenHeight * 0.25,
              //   color: Colors.purple
              //       .withOpacity(0.25), // Adjust opacity as needed
              // ),
              Column(
                children: [
                  SizedBox(height: screenHeight * 0.03), // Adjust as needed
                  // Top bar
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      //color: Colors.white.withOpacity(0.2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.2)),
                      child: Row(
                        children: [
                          // Menu bar
                          IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              // Handle menu button press
                            },
                          ),
                          // Logo
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                'assets/images/skip-the-task-logo.jpeg',
                                height: 40.0, // Adjust as needed
                              ),
                            ),
                          ),
                          // Profile icon button
                          IconButton(
                            icon: Icon(Icons.phone, color: Colors.white),
                            onPressed: () {
                              // Handle profile button press
                            },
                          ),
                          IconButton(
                            icon:
                                Icon(Icons.notifications, color: Colors.white),
                            onPressed: () {
                              // Handle profile button press
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.person, color: Colors.white),
                            onPressed: () {
                              // Handle profile button press
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.01),
                  Text('Largest Booking\nService Platform',
                      style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          color: Colors.white,
                          fontSize: responsiveSize * 0.04)),
                  SizedBox(height: screenHeight * 0.01),

                  // Search bar
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'What do you need help with?',
                                hintStyle:
                                    TextStyle(fontSize: responsiveSize * 0.035),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                  horizontal: 16.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(Icons.search)),
                          ),
                        ),
                      ),

                      // SizedBox(
                      //     width: 8.0), // Add some space between the buttons
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for the button to navigate to another page
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          elevation: 4.0, // Adjust elevation as needed
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          'Navigate',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.1, // Adjust the height of the list
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageIconPaths.length,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 50.0, // Diameter of the circular container
                            height: 50.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple.withOpacity(
                                  0.65), // Adjust opacity as needed
                            ),
                            child: Center(
                              child: Image.asset(
                                imageIconPaths[
                                    index], // Accessing IconData from the list
                                //size: 30.0, // Size of the icon
                                //color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage(
                        imagePaths[index],
                      ),
                      colorFilter: ColorFilter.mode(
                        Colors.black
                            .withOpacity(0.5), // Adjust opacity as needed
                        BlendMode.darken, // Choose desired BlendMode
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      roundimagetexts[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: responsiveSize * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              //height: screenHeight * 0.8,
              //width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple),
              padding: EdgeInsets.all(16.0),
              //color: Colors.deepPurple,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: responsiveSize * 0.4,
                        height: responsiveSize * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/images/about.jpeg',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //SizedBox(height: 5),
                            Text(
                              "Discover excellence at your fingertips with Skip The Task From skilled handyman to expert cleaners, reliable HVAC technicians, and accomplished lawyers, discover top-notch professionals for every task. Whether it's home improvement, event services, or personal care, our platform seamlessly connects you with trusted experts to get the job done right. Join us today and unlock unparalleled convenience, quality, and peace of mind.",
                              style: TextStyle(fontSize: responsiveSize * 0.03),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Line 1\nLine 2\nLine 3',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          child: Row(
            children: [Text('Service 2')],
          ),
        ),
      ])),
    );
  }
}
