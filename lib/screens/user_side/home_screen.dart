import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/screens/user_side/about_us_screen.dart';
import 'package:task_rabbit/screens/user_side/contact_us_screen.dart';
import 'package:task_rabbit/screens/user_side/hiring_tasker_screen.dart';
import 'package:task_rabbit/screens/instant_request_side/instant_request_index_screen.dart';
import 'package:task_rabbit/screens/instant_request_side/instant_request_main.dart';
import 'package:task_rabbit/screens/user_side/our_services_screen.dart';
import 'package:task_rabbit/widgets/about_us_widget.dart';
import 'package:task_rabbit/widgets/app_bar.dart';
import 'package:task_rabbit/widgets/build_bottom_nav_bar.dart';
import 'package:task_rabbit/widgets/left_side_drawer.dart';
import 'package:task_rabbit/widgets/popular_projects_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> reviewImagePaths = [
    'assets/images/swirl.png',
    'assets/images/george.png',
    'assets/images/swirl.png',
    'assets/images/fast.png',

    // Add more image paths as needed
  ];
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

    return SafeArea(
      child: Scaffold(
        //appBar: CustomAppBar(),
        drawer: buildLeftDrawer(context),
        //      drawer: Drawer(
        //   width: DeviceDimensions.screenWidth(context) * 0.6,
        //   child: Stack(
        //     children: [
        //       Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Align(
        //               alignment: Alignment.topRight,
        //               child: Positioned(
        //                 top: 0,
        //                 right: 0,
        //                 child: IconButton(
        //                   icon: Icon(Icons.close),
        //                   onPressed: () {
        //                     Navigator.pop(context); // Close the drawer
        //                   },
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 14.0),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: <Widget>[
        //                 Icon(Icons.language),
        //                 SizedBox(width: 8), // Space between icon and text
        //                 //Text('EN'),
        //                 //SizedBox(width: 8), // Space between text and dropdown
        //                 DropdownButton<String>(
        //                   value: 'EN', // Initially selected value
        //                   onChanged: (String? newValue) {
        //                     // Handle dropdown value change
        //                   },
        //                   items: <String>['EN', 'SP', 'FR'] // Dropdown items
        //                       .map<DropdownMenuItem<String>>((String value) {
        //                     return DropdownMenuItem<String>(
        //                       value: value,
        //                       child: Text(value),
        //                     );
        //                   }).toList(),
        //                 ),
        //                 // Flexible space to push the toggle button to the right
        //                 // ThemeToggle(),
        //               ],
        //             ),
        //           ),
        //           //home
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GestureDetector(
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => HomeScreen(),
        //                   ),
        //                 );
        //               },
        //               child: Text(
        //                 'Home',
        //                 style: TextStyle(
        //                   fontFamily: 'Roboto-Bold',
        //                   fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           //our services
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GestureDetector(
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => OurServicesScreen(),
        //                   ),
        //                 );
        //               },
        //               child: Text(
        //                 'Our Services',
        //                 style: TextStyle(
        //                   fontFamily: 'Roboto-Bold',
        //                   fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           //privacy policy
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GestureDetector(
        //               onTap: () {
        //                 // Navigator.push(
        //                 //   context,
        //                 //   MaterialPageRoute(
        //                 //     builder: (context) => OurServicesScreen(),
        //                 //   ),
        //                 // );
        //               },
        //               child: Text(
        //                 'Privacy Policy',
        //                 style: TextStyle(
        //                   fontFamily: 'Roboto-Bold',
        //                   fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           //about us
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GestureDetector(
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => AboutUsScreen(),
        //                   ),
        //                 );
        //               },
        //               child: Text(
        //                 'About Us',
        //                 style: TextStyle(
        //                   fontFamily: 'Roboto-Bold',
        //                   fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           //settings
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GestureDetector(
        //               onTap: () {
        //                 // Navigator.push(
        //                 //   context,
        //                 //   MaterialPageRoute(
        //                 //     builder: (context) => OurServicesScreen(),
        //                 //   ),
        //                 // );
        //               },
        //               child: Text(
        //                 'Settings',
        //                 style: TextStyle(
        //                   fontFamily: 'Roboto-Bold',
        //                   fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           //logout
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GestureDetector(
        //               onTap: () {
        //                 // Navigator.push(
        //                 //   context,
        //                 //   MaterialPageRoute(
        //                 //     builder: (context) => OurServicesScreen(),
        //                 //   ),
        //                 // );
        //               },
        //               child: Text(
        //                 'Log Out',
        //                 style: TextStyle(
        //                   fontFamily: 'Roboto-Bold',
        //                   fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
        //                 ),
        //               ),
        //             ),
        //           ),

        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: SizedBox(
        //               width: DeviceDimensions.screenWidth(context) * 0.5,
        //               child: ElevatedButton(
        //                 onPressed: () {
        //                   Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                       builder: (context) => ContactUsScreen(),
        //                     ),
        //                   );
        //                 },
        //                 style: ElevatedButton.styleFrom(
        //                   backgroundColor:
        //                       Color.fromARGB(255, 125, 79, 135), // Background color
        //                 ),
        //                 child:
        //                     Text('Contact Us', style: TextStyle(color: Colors.white)),
        //               ),
        //             ),
        //           ),

        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: SizedBox(
        //               width: DeviceDimensions.screenWidth(context) * 0.5,
        //               child: ElevatedButton(
        //                 onPressed: () {
        //                   // Do something
        //                 },
        //                 style: ElevatedButton.styleFrom(
        //                   backgroundColor:
        //                       Color.fromARGB(255, 125, 79, 135), // Background color
        //                 ),
        //                 child: Text('Become a Provider',
        //                     style: TextStyle(color: Colors.white)),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),

        //       // //bottom image
        //       Positioned(
        //         left: 0,
        //         bottom: 0,
        //         child: Align(
        //           alignment: Alignment.bottomRight,
        //           child: Image.asset(
        //             'assets/images/provider.jpeg', // Replace with your image path
        //             width: DeviceDimensions.screenWidth(context) * 0.7,
        //             //height: 100,
        //             fit: BoxFit.fitWidth,
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              //header container
              // Container(
              //     // height: DeviceDimensions.screenHeight(context) * 0.25,
              //     width: DeviceDimensions.screenWidth(context),
              //     //color: Colors.amber,
              //     decoration: BoxDecoration(
              //         image: DecorationImage(
              //       image: AssetImage('assets/images/background-image.png'),
              //       fit: BoxFit.cover,
              //       colorFilter: ColorFilter.mode(
              //         Color.fromARGB(1, 92, 35, 105)
              //             .withOpacity(0.4), // Adjust opacity as needed
              //         BlendMode.darken, // Choose desired BlendMode
              //       ),
              //     )),
              //     child: Stack(
              //       children: [
              //         Column(
              //           children: [
              //             SizedBox(
              //                 height: DeviceDimensions.screenHeight(context) *
              //                     0.03),
              //             SizedBox(
              //               height:
              //                   DeviceDimensions.screenHeight(context) * 0.05,
              //               child: Padding(
              //                 padding: EdgeInsets.symmetric(horizontal: 16.0),
              //                 child: Container(
              //                   //color: Colors.white.withOpacity(0.2),
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(8),
              //                       color: Colors.white.withOpacity(0.2)),
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       // Menu bar
              //                       SizedBox(
              //                         child: Builder(
              //                             builder: (BuildContext context) {
              //                           return IconButton(
              //                             icon: const Icon(
              //                               Icons.menu,
              //                               color: Colors.white,
              //                             ),
              //                             onPressed: () {
              //                               // Scaffold.of(context).openDrawer();
              //                             },
              //                           );
              //                         }),
              //                       ),
              //                       SizedBox(
              //                           width: DeviceDimensions.screenWidth(
              //                                   context) *
              //                               0.1),
              //                       // Logo
              //                       Center(
              //                         child: Image.asset(
              //                           'assets/images/skip-the-task-logo.jpeg',
              //                           //height: 40.0, // Adjust as needed
              //                         ),
              //                       ),
              //                       Spacer(),
              //                       // Profile icon button
              //                       Row(
              //                         children: [
              //                           IconButton(
              //                             icon: Icon(
              //                               Icons.phone,
              //                               color: Colors.white,
              //                               size:
              //                                   DeviceDimensions.responsiveSize(
              //                                           context) *
              //                                       0.05,
              //                             ),
              //                             onPressed: () {
              //                               // Handle profile button press
              //                             },
              //                           ),
              //                           IconButton(
              //                             icon: Icon(
              //                               Icons.notifications,
              //                               color: Colors.white,
              //                               size:
              //                                   DeviceDimensions.responsiveSize(
              //                                           context) *
              //                                       0.05,
              //                             ),
              //                             onPressed: () {
              //                               // Handle profile button press
              //                             },
              //                           ),
              //                           // IconButton(
              //                           //   icon: Icon(
              //                           //     Icons.person,
              //                           //     color: Colors.white,
              //                           //     size: responsiveSize * 0.04,
              //                           //   ),
              //                           //   onPressed: () {
              //                           //     // Handle profile button press
              //                           //   },
              //                           // ),
              //                         ],
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //                 height: DeviceDimensions.screenHeight(context) *
              //                     0.005),
              //             SizedBox(
              //               height:
              //                   DeviceDimensions.screenHeight(context) * 0.05,
              //               child: Center(
              //                 child: Text('Largest Booking\nService Platform',
              //                     style: TextStyle(
              //                         fontFamily: 'Roboto-Medium',
              //                         color: Colors.white,
              //                         fontSize: DeviceDimensions.responsiveSize(
              //                                 context) *
              //                             0.04)),
              //               ),
              //             ),
              //             //SizedBox(height: screenHeight * 0.001),
              //             SizedBox(
              //                 height:
              //                     DeviceDimensions.screenHeight(context) * 0.1,
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(10.0),
              //                   child: Row(children: [
              //                     Padding(
              //                       padding: const EdgeInsets.all(8.0),
              //                       child: SizedBox(
              //                         width: DeviceDimensions.screenWidth(
              //                                 context) *
              //                             0.5,
              //                         child: TextField(
              //                           decoration: InputDecoration(
              //                               hintText:
              //                                   'What do you need help with?',
              //                               hintStyle: TextStyle(
              //                                   fontSize:
              //                                       DeviceDimensions.responsiveSize(
              //                                               context) *
              //                                           0.035),
              //                               filled: true,
              //                               fillColor: Colors.white,
              //                               contentPadding:
              //                                   const EdgeInsets.symmetric(
              //                                 vertical: 6.0,
              //                                 horizontal: 16.0,
              //                               ),
              //                               border: OutlineInputBorder(
              //                                 borderRadius:
              //                                     BorderRadius.circular(20.0),
              //                                 borderSide: BorderSide.none,
              //                               ),
              //                               suffixIcon: Container(
              //                                   decoration: BoxDecoration(
              //                                       color: Color.fromARGB(
              //                                           255, 92, 35, 105),
              //                                       borderRadius: BorderRadius.only(
              //                                           topRight:
              //                                               Radius.circular(20),
              //                                           bottomRight:
              //                                               Radius.circular(
              //                                                   20))),
              //                                   padding:
              //                                       const EdgeInsets.all(8.0),
              //                                   child: Icon(Icons.search,
              //                                       color: Colors.white))),
              //                         ),
              //                       ),
              //                     ),
              //                     Padding(
              //                         padding: EdgeInsets.all(8),
              //                         child: SizedBox(
              //                             width: DeviceDimensions.screenWidth(
              //                                     context) *
              //                                 0.35,
              //                             child: ElevatedButton(
              //                                 style: ButtonStyle(
              //                                   backgroundColor:
              //                                       MaterialStateProperty.all<
              //                                               Color>(
              //                                           Color.fromARGB(
              //                                               255,
              //                                               148,
              //                                               108,
              //                                               155)), // Set the background color here
              //                                 ),
              //                                 onPressed: () {
              //                                   Navigator.push(
              //                                     context,
              //                                     MaterialPageRoute(
              //                                       builder: (context) =>
              //                                           //InstantRequestIndexScreen(),
              //                                           InstantRequestMainScreen(),
              //                                     ),
              //                                   );
              //                                 },
              //                                 child: Text(
              //                                   'Instant Request',
              //                                   style: TextStyle(
              //                                       fontSize: DeviceDimensions
              //                                               .responsiveSize(
              //                                                   context) *
              //                                           0.025,
              //                                       color: Colors.white),
              //                                   maxLines:
              //                                       1, // Ensure text wraps in one line
              //                                   overflow: TextOverflow.ellipsis,
              //                                 ))))
              //                   ]),
              //                 ))
              //           ],
              //         )
              //       ],
              //     )),

              //icon container
              Container(
                height: DeviceDimensions.screenHeight(context) * 0.1,
                width: DeviceDimensions.screenWidth(context),
                //color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: DeviceDimensions.screenHeight(context) *
                        0.1, // Adjust the height of the list
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
                                      width:
                                          50.0, // Diameter of the circular container
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(255, 239, 233,
                                            240), // Adjust opacity as needed
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
                ),
              ),
              //rounded rectangle container
              Container(
                height: DeviceDimensions.screenHeight(context) * 0.1,
                width: DeviceDimensions.screenWidth(context),
                //color: Colors.purple,
                child: SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HiringTaskerScreen(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: DeviceDimensions.screenWidth(context) * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  imagePaths[index],
                                ),
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(
                                      0.5), // Adjust opacity as needed
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
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.01),
              //image
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                width:
                                    DeviceDimensions.screenWidth(context) * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color.fromARGB(
                                        255, 221, 73, 255), // Border color
                                    width: 2, // Border width
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/about.jpeg',
                                    width: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.25, // Adjust the width as needed
                                    height: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.40,
                                    fit: BoxFit
                                        .fitWidth, // Adjust the height as needed
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Assembly',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto-Bold',
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.05,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.4,
                                  child: Text(
                                    "Discover excellence at your fingertips with Skip The Task From skilled handyman to expert cleaners, reliable HVAC technicians, and accomplished lawyers, discover top-notch professionals for every task. Whether it's home improvement, event services, or personal care, our platform seamlessly connects you with trusted experts to get the job done right. Join us today and unlock unparalleled convenience, quality, and peace of mind.",
                                    style: TextStyle(
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.70,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Assemble or disassemble furniture items by unboxing, building, and any cleanup.',
                                      style: TextStyle(
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
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
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.70,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Now Trending: Curved sofas, computer desks, and sustainable materials',
                                      style: TextStyle(
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
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
                          width: DeviceDimensions.screenWidth(context) * 0.35,
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
                                        style: TextStyle(color: Colors.white)),
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
                                      imagePath: 'assets/images/clients.png',
                                      text2: 'Happy Clients',
                                    ),
                                    AboutUsWidget(
                                      text1: '20+',
                                      imagePath: 'assets/images/awards.png',
                                      text2: 'Winning Awards',
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    AboutUsWidget(
                                      text1: '10 K+',
                                      imagePath: 'assets/images/projects.png',
                                      text2: 'Complete Projects',
                                    ),
                                    AboutUsWidget(
                                      text1: '900+',
                                      imagePath: 'assets/images/review.png',
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
                  )),

              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
              //become a provider
              Container(
                  height: DeviceDimensions.screenHeight(context) * 0.18,
                  width: DeviceDimensions.screenWidth(context) * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/provider.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 92, 35, 105)
                              .withOpacity(0.6), // Adjust opacity as needed
                          BlendMode.darken, // Choose desired BlendMode
                        ),
                      )),
                  //color: Colors.green
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            //height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                  "Become As Provider\n&\nBe Your Own Boss With Skip The Task",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.04,
                                      fontFamily: 'Roboto-Bold')),
                            ),
                          ),
                          SizedBox(
                            height:
                                DeviceDimensions.screenHeight(context) * 0.01,
                          ),
                          SizedBox(
                              child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Become Provider',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto-Bold'),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 92, 35,
                                      105)), // Set the background color here
                            ),
                          ))
                          //SizedBox(height: screenHeight * 0.001),
                        ],
                      )
                    ],
                  )),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
              //popular projects
              Container(
                height: DeviceDimensions.screenHeight(context) * 0.7,
                width: DeviceDimensions.screenWidth(context) * 0.9,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 204, 187, 209),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    SizedBox(
                      height: DeviceDimensions.screenHeight(context) * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            'Popular Projects',
                            style: TextStyle(
                                fontFamily: 'Roboto-Bold',
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.05),
                          ),
                          SizedBox(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.2),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              textAlign: TextAlign.right,
                              'See All>>',
                              style: TextStyle(
                                color: Color.fromARGB(255, 91, 92, 94),
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.04,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Table(
                        children: const [
                          TableRow(
                            children: [
                              PopularProjectsWidget(
                                imagePath:
                                    'assets/images/furniture_assembly.png',
                                text: 'Furniture Assembly',
                                button_text: 'Book Now',
                              ),
                              PopularProjectsWidget(
                                imagePath:
                                    'assets/images/mounting_art_shelves.png',
                                text: 'Mounting Art Or Shelves',
                                button_text: 'Book Now',
                              ),
                            ],
                          ),
                          TableRow(children: [
                            PopularProjectsWidget(
                              imagePath: 'assets/images/mounting_tv.png',
                              text: 'Mounting A Tv',
                              button_text: 'Book Now',
                            ),
                            PopularProjectsWidget(
                              imagePath: 'assets/images/help_moving.png',
                              text: 'Help Moving',
                              button_text: 'Book Now',
                            ),
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
              //who we work
              Container(
                height: DeviceDimensions.screenHeight(context) * 0.5,
                width: DeviceDimensions.screenWidth(context) * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('assets/images/whowework.jpeg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Color.fromARGB(255, 0, 0, 0)
                            .withOpacity(0.5), // Adjust opacity as needed
                        BlendMode.darken, // Choose desired BlendMode
                      ),
                    )),
                //color: Colors.green
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                              //height: screenHeight * 0.05,
                              child: Text(
                            'Who We Work',
                            style: TextStyle(
                                fontFamily: 'Roboto-Bold',
                                color: Colors.white,
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.05),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                              //height: screenHeight * 0.05,
                              child: Text(
                            'We will not take anyone or anything for granted. We are grateful for our people, members, and our greater community as well as for the opportunities we have in front of us.',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.04),
                            softWrap: true,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                              //height: screenHeight * 0.05,
                              child: Text(
                            'Why Choose Us',
                            style: TextStyle(
                                fontFamily: 'Roboto-Bold',
                                color: Colors.white,
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.05),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                              //height: screenHeight * 0.05,
                              child: Text(
                            'Our team of experienced professionals taskers is committed to providing top-notch services to you.',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.04),
                            softWrap: true,
                          )),
                        ),
                        SizedBox(
                          height: DeviceDimensions.screenHeight(context) * 0.01,
                        ),
                        SizedBox(
                          width: DeviceDimensions.screenWidth(context) * 0.35,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 180, 154, 186),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('Book Now',
                                        style: TextStyle(color: Colors.white)),
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
                          ),
                        ),
                        //SizedBox(height: screenHeight * 0.001),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),

              Stack(
                children: [
                  Container(
                    //color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 65, 25, 75),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/olivia.png'), // Replace with the actual image path
                                          radius: 30.0,
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Olivia Emma',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Asst. Manager',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(5, (index) {
                                            return Icon(Icons.star,
                                                color: Colors.amber,
                                                size: 20.0);
                                          }),
                                        ),
                                      ]),
                                    ],
                                  ),
                                  SizedBox(height: 16.0),
                                  Column(
                                    children: [
                                      Text(
                                        'Skip The Task is a game-changer! From handyman to legal help, this app connects you with top professionals effortlessly. It\'s become my go-to for all tasks, big or small. Highly recommended for convenience and quality service.',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.arrow_back_ios,
                                              color: Colors.white,
                                              size: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                          Icon(Icons.arrow_forward_ios,
                                              color: Colors.white,
                                              size: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(4, (index) {
                                      return Image.asset(
                                        reviewImagePaths[index],
                                        width: DeviceDimensions.responsiveSize(
                                                context) *
                                            0.2,
                                        height: DeviceDimensions.responsiveSize(
                                                context) *
                                            0.2,
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(height: 16.0),
                          // SizedBox(height: 16.0),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: -6,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/testimonial.png',
                                ),
                                fit: BoxFit.contain)),
                        width: DeviceDimensions.screenWidth(context) * 0.6,
                        height: DeviceDimensions.screenHeight(context) * 0.2),
                  ),
                ],
              ),

              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavBar(context),
      ),
    );
  }
}