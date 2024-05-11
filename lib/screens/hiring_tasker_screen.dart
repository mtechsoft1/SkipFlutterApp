import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/screens/task_type.dart';

class HiringTaskerScreen extends StatefulWidget {
  const HiringTaskerScreen({super.key});

  @override
  State<HiringTaskerScreen> createState() => _HiringTaskerScreenState();
}

class _HiringTaskerScreenState extends State<HiringTaskerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(children: [
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
                center: Alignment.center,
                radius: 10,
              ),
            ),
            // height: DeviceDimensions.screenHeight(context),
            child: Column(
              children: [
                SizedBox(
                  height: DeviceDimensions.screenHeight(context) * 0.08,
                ),
                SizedBox(
                    //color: Colors.blueAccent,
                    height: DeviceDimensions.screenHeight(context) * 0.22,
                    child: Column(children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 0, left: 20, right: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/skip-the-task-logo.jpeg',
                                      height: 40.0, // Adjust as needed
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    //round circle shape and text
                                    Container(
                                      width: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.09, // Adjust size as needed
                                      height: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.09, // Adjust size as needed
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(255, 92, 35,
                                            105), // Change color as needed
                                      ),
                                      child: Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Change text color as needed
                                            fontSize:
                                                20, // Adjust font size as needed
                                            fontWeight: FontWeight
                                                .bold, // Adjust font weight as needed
                                          ),
                                        ),
                                      ),
                                    ),
                                    //progress indicator round
                                    Container(
                                      width: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.09, // Adjust size as needed
                                      height: DeviceDimensions.responsiveSize(
                                              context) *
                                          0.09, // Adjust size as needed
                                      child: CircularProgressIndicator(
                                        strokeWidth:
                                            2, // Adjust thickness of the progress indicator
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(Colors
                                                .white), // Change progress indicator color
                                        backgroundColor: Colors
                                            .transparent, // Make progress indicator background transparent
                                        value:
                                            0.5, // Set progress value (0.0 to 1.0)
                                      ),
                                    ),
                                  ],
                                ),
                                //line on the right hand side
                                Container(
                                  height: 1,
                                  alignment: Alignment.centerRight,
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.45, // or specify a specific width
                                  color: Color.fromARGB(255, 92, 35, 105),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  //crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.3),
                                    Text('Describe Task')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                            width: DeviceDimensions.screenWidth(context) * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/edit.png'),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Tell Us About Your Task. We Use These Details To Show Taskers In Your Area Who Fit Your Needs.',
                                      style: TextStyle(
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.03),
                                      softWrap: true,

                                      //overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ])),
                Container(
                  height: DeviceDimensions.screenHeight(context) * 0.45,
                  width: DeviceDimensions.screenWidth(context) * 0.9,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(12),
                  //   //color: Colors.blueGrey,
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Furniture Assembly',
                          style: TextStyle(
                              fontFamily: 'Roboto-Medium',
                              fontSize:
                                  DeviceDimensions.responsiveSize(context) *
                                      0.05),
                        ),
                      ),
                      Container(
                        height: DeviceDimensions.screenHeight(context) * 0.35,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 233, 240),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Your Task Location',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                            Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.black
                                    .withOpacity(0.1), // Grey background color
                                borderRadius: BorderRadius.circular(
                                    12), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20), // Adjust padding as needed
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Street Address', // Hint text
                                  border: InputBorder.none, // Remove border
                                  // icon: Icon(
                                  //     Icons.search), // Optional search icon
                                ),
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                            Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.black
                                    .withOpacity(0.1), // Grey background color
                                borderRadius: BorderRadius.circular(
                                    12), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20), // Adjust padding as needed
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Unit or Apt #', // Hint text
                                  border: InputBorder.none, // Remove border
                                  // icon: Icon(
                                  //     Icons.search), // Optional search icon
                                ),
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                            SizedBox(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.4,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TaskTypeScreen()),
                                  );
                                  print('press');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 92, 35,
                                      105), // Set the background color of the button
                                  // Set the text color
                                ),
                                child: Text(
                                  'Continue',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: DeviceDimensions.screenHeight(context) * 0.09,
                  width: DeviceDimensions.screenWidth(context) * 0.9,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 239, 233, 240),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Task Option',
                                style: TextStyle(
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.04),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DeviceDimensions.screenHeight(context) * 0.03,
                ),
                Container(
                  height: DeviceDimensions.screenHeight(context) * 0.09,
                  width: DeviceDimensions.screenWidth(context) * 0.9,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 239, 233, 240),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Tell Us The Details To Get The Perfect Expert',
                          style: TextStyle(
                              fontFamily: 'Roboto-Medium',
                              fontSize:
                                  DeviceDimensions.responsiveSize(context) *
                                      0.04),
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DeviceDimensions.screenHeight(context) * 0.03,
                )
              ],
            ))
      ]),
    )));
  }
}
