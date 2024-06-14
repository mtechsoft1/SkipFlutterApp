// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class MobileBody extends StatefulWidget {
//   const MobileBody({super.key});

//   @override
//   State<MobileBody> createState() => _MobileBodyState();
// }

// class _MobileBodyState extends State<MobileBody> {
//   final List<IconData> iconDataList = [
//     Icons.settings,
//     Icons.admin_panel_settings,
//     Icons.settings_accessibility,
//     Icons.shopping_cart,
//     Icons.settings,
//     Icons.admin_panel_settings,
//     Icons.settings_accessibility,
//     Icons.shopping_cart,
//     // Add more icon data as needed
//   ];

//   final List<String> icontexts = [
//     'Home',
//     'Work',
//     'School',
//     'Shopping',
//     'Home',
//     'Work',
//     'School',
//     'Shopping',
//     // Add more texts as needed
//   ];

//   final List<String> imagePaths = [
//     'assets/images/clean.jpeg',
//     'assets/images/clean.jpeg',
//     'assets/images/clean.jpeg',
//     'assets/images/clean.jpeg',
//     // Add more image paths as needed
//   ];

//   final List<String> texts = [
//     'House Cleaning',
//     'Kitchen Cleaning',
//     'Other',
//     'Carpet Cleaning'
//     // Add more texts as needed
//   ];

//   final List<String> voucherPath = [
//     'assets/images/voucher.jpeg',
//     'assets/images/voucher.jpeg',
//     'assets/images/voucher.jpeg',
//     'assets/images/voucher.jpeg',
//     // Add more image paths as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     double responsiveSize = MediaQuery.of(context).size.width;
//     return Scaffold(
//       //backgroundColor: Colors.yellow,
//       //resizeToAvoidBottomInset: false,
//       body: SingleChildScrollView(
//         child: Container(
//           //color: Colors.blue,
//           child: Column(children: [
//             Stack(
//               children: [
//                 // Background image
//                 Container(
//                   height: screenHeight * 0.25,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/background-image.png'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 //purple overlay
//                 Container(
//                   height: screenHeight * 0.25,
//                   color: Colors.purple
//                       .withOpacity(0.25), // Adjust opacity as needed
//                 ),
//                 // Header content
//                 Column(
//                   children: [
//                     SizedBox(height: screenHeight * 0.03), // Adjust as needed
//                     // Top bar
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 16.0),
//                       child: Container(
//                         //color: Colors.white.withOpacity(0.2),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: Colors.white.withOpacity(0.2)),
//                         child: Row(
//                           children: [
//                             // Menu bar
//                             IconButton(
//                               icon: const Icon(
//                                 Icons.menu,
//                                 color: Colors.white,
//                               ),
//                               onPressed: () {
//                                 // Handle menu button press
//                               },
//                             ),
//                             // Logo
//                             Expanded(
//                               child: Center(
//                                 child: Image.asset(
//                                   'assets/images/skip-the-task-logo.jpeg',
//                                   height: 40.0, // Adjust as needed
//                                 ),
//                               ),
//                             ),
//                             // Profile icon button
//                             IconButton(
//                               icon:
//                                   const Icon(Icons.person, color: Colors.white),
//                               onPressed: () {
//                                 // Handle profile button press
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: screenHeight * 0.01),
//                     Text('Largest Booking',
//                         style: TextStyle(
//                             fontFamily: 'Cinzel-Medium',
//                             color: Colors.white,
//                             fontSize: responsiveSize * 0.05)),
//                     SizedBox(height: screenHeight * 0.001),
//                     Text('Service Platform',
//                         style: TextStyle(
//                             fontFamily: 'Cinzel-Medium',
//                             color: Colors.white,
//                             fontSize: responsiveSize * 0.05)),
//                     SizedBox(height: screenHeight * 0.01),
//                     // Search bar
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: 'What do you need help with?',
//                           hintStyle:
//                               TextStyle(fontSize: responsiveSize * 0.035),
//                           filled: true,
//                           fillColor: Colors.white,
//                           contentPadding: const EdgeInsets.symmetric(
//                               vertical: 6.0,
//                               horizontal:
//                                   16.0), // Adjust vertical padding as needed
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             borderSide: BorderSide.none,
//                           ),
//                           suffixIcon: Container(
//                               padding: const EdgeInsets.all(12.0),
//                               decoration: const BoxDecoration(
//                                 color: Colors.purple,
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(30.0),
//                                   bottomRight: Radius.circular(30.0),
//                                 ),
//                               ),
//                               child: const Icon(
//                                 Icons.search,
//                                 color: Colors.white,
//                               )),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: screenHeight * 0.01),
//             SizedBox(
//               height: 100.0, // Adjust the height of the list
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: iconDataList.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Center(
//                       child: Column(
//                         children: [
//                           Center(
//                             child: Container(
//                               width: 60.0, // Diameter of the circular container
//                               height: 60.0,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.deepPurple.withOpacity(
//                                     0.5), // Adjust opacity as needed
//                               ),
//                               child: Center(
//                                 child: Icon(
//                                   iconDataList[
//                                       index], // Accessing IconData from the list
//                                   size: 30.0, // Size of the icon
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Text(
//                             icontexts[index],
//                             //textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: responsiveSize * 0.035,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.01),
//             SizedBox(
//               height: 80.0, // Adjust the height of the list
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: imagePaths.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Center(
//                       child: Stack(
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(
//                                 20.0), // Adjust the border radius to make it more capsule-like
//                             child: Container(
//                               width: 100.0, // Width of the image
//                               height: 80.0, // Height of the image
//                               child: Image.asset(
//                                 imagePaths[index],
//                                 fit: BoxFit.cover,
//                                 color: Colors.black.withOpacity(
//                                     0.5), // Adjust opacity as needed
//                                 colorBlendMode: BlendMode.darken,
//                               ),
//                             ),
//                           ),
//                           Center(
//                             child: Text(
//                               texts[index],
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: responsiveSize * 0.02,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(children: [
//                 Text(
//                   'Cleaning Services',
//                   style: TextStyle(
//                     fontSize: responsiveSize * 0.045,
//                   ),
//                 ),
//                 SizedBox(width: screenWidth * 0.38),
//                 Text(
//                   'See All',
//                   textAlign: TextAlign.right,
//                 ),
//               ]),
//             ),
//             SizedBox(
//               height: 150.0, // Adjust the height of the list
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: imagePaths.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 200.0, // Width of the image
//                           height: 100.0, // Height of the image
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8.0),
//                             image: DecorationImage(
//                               image: AssetImage(imagePaths[index]),
//                               fit: BoxFit.fitWidth,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           texts[index],
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: responsiveSize * 0.035,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(
//               height: 200.0, // Adjust the height of the list
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: voucherPath.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 250.0, // Width of the image
//                           height: 150.0, // Height of the image
//                           decoration: BoxDecoration(
//                             color: Colors.deepPurple.withOpacity(0.8),
//                             borderRadius: BorderRadius.circular(8.0),
//                             image: DecorationImage(
//                               image: AssetImage(voucherPath[index]),
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         // Text(
//                         //   texts[index],
//                         //   style: TextStyle(fontSize: 16.0),
//                         // ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ]),
//         ),
//       ),
//       bottomNavigationBar: GNav(
//           backgroundColor: Colors.deepPurple.withOpacity(0.2),

//           //rippleColor: Colors.grey, // tab button ripple color when pressed
//           hoverColor: Colors.purple, // tab button hover color
//           haptic: true, // haptic feedback
//           tabBorderRadius: 15,
//           // tabActiveBorder:
//           //     Border.all(color: Colors.black, width: 1), // tab button border
//           // tabBorder:
//           //     Border.all(color: Colors.grey, width: 1), // tab button border
//           // // tabShadow: [
//           //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
//           // ], // tab button shadow
//           curve: Curves.easeOutExpo, // tab animation curves
//           duration: Duration(milliseconds: 900), // tab animation duration
//           gap: 8, // the tab button gap between icon and text
//           color: Colors.grey[800], // unselected icon color
//           activeColor: Colors.purple, // selected icon and text color
//           iconSize: 24, // tab button icon size
//           tabBackgroundColor:
//               Colors.purple.withOpacity(0.5), // selected tab background color
//           padding: EdgeInsets.symmetric(
//               horizontal: 20, vertical: 10), // navigation bar padding
//           tabs: [
//             GButton(
//               icon: Icons.home,
//               //text: 'Home',
//             ),
//             GButton(
//               icon: Icons.message,
//               //text: 'Likes',
//             ),
//             GButton(
//               icon: Icons.notifications,
//               //text: 'Search',
//             ),
//             GButton(
//               icon: Icons.phone,
//               //text: 'Profile',
//             )
//           ]),
//     );
//   }
// }






//   // bool isDesktop(BuildContext context) =>
//   //     MediaQuery.of(context).size.width >= 600;

//   // bool isMobile(BuildContext context) =>
//   //     MediaQuery.of(context).size.width < 600;
  

  
  
