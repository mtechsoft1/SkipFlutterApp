import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';

class TaskerFormOneScreen extends StatefulWidget {
  const TaskerFormOneScreen({super.key});

  @override
  State<TaskerFormOneScreen> createState() => _TaskerFormOneScreenState();
}

class _TaskerFormOneScreenState extends State<TaskerFormOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                  //height: DeviceDimensions.screenHeight(context),
                  child: Column(
                    children: [
                      SizedBox(
                        height: DeviceDimensions.screenHeight(context) * 0.08,
                      ),
                      SizedBox(
                          //color: Colors.blueAccent,
                          //height: DeviceDimensions.screenHeight(context) * 0.22,
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
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,

                                          color: Color.fromARGB(255, 92, 35,
                                              105), // Change color as needed
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '2',
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
                                        child: const CircularProgressIndicator(
                                          strokeWidth:
                                              2, // Adjust thickness of the progress indicator
                                          valueColor: AlwaysStoppedAnimation<
                                                  Color>(
                                              Colors
                                                  .white), // Change progress indicator color
                                          backgroundColor: Colors
                                              .transparent, // Make progress indicator background transparent
                                          value:
                                              0.6, // Set progress value (0.0 to 1.0)
                                        ),
                                      ),
                                    ],
                                  ),
                                  //line on the right hand side
                                  Container(
                                    height: 1,
                                    alignment: Alignment.centerRight,
                                    width:
                                        DeviceDimensions.screenWidth(context) *
                                            0.45, // or specify a specific width
                                    color:
                                        const Color.fromARGB(255, 92, 35, 105),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    //crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          width: DeviceDimensions.screenWidth(
                                                  context) *
                                              0.3),
                                      const Text('Describe Task')
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
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.9,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/group_icon.png'),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Find Your Tassker And Availability To Your Time',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Sorted By: ',
                              style: TextStyle(
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.04,
                                  fontFamily: 'Roboto'),
                            ),
                            SizedBox(
                                width: DeviceDimensions.screenWidth(context) *
                                    0.04),
                            Container(
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.05,
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(),
                              ),
                              child: Center(
                                child: DropdownButton<String>(
                                  value:
                                      'Recommended', // Initially selected value
                                  onChanged: (String? newValue) {
                                    // Handle dropdown value change
                                  },
                                  items: <String>[
                                    'Recommended',
                                    'Popular',
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
                          ],
                        ),
                      ),
                      Container(
                        height: DeviceDimensions.screenHeight(context) * 0.28,
                        width: DeviceDimensions.screenWidth(context) * 0.9,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 233, 240),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Filter',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.05),
                                  ),
                                  SizedBox(
                                    width:
                                        DeviceDimensions.screenWidth(context) *
                                            0.03,
                                  ),
                                  Image.asset('assets/images/filter_icon.png'),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text(
                                'Date',
                                style: TextStyle(
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.04),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.2,
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.04,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all()),
                                        child: Text(
                                          'Today',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.2,
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.04,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all()),
                                        child: Text(
                                          'In 3 Days',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.2,
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.04,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all()),
                                        child: Text(
                                          'In A Week',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.2,
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.04,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all()),
                                        child: Text(
                                          'Choose',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //height: DeviceDimensions.screenHeight(context) * 0.09,
                        width: DeviceDimensions.screenWidth(context) * 0.9,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 233, 240),
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
                                      'Your Items',
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
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Container(
                                    width:
                                        DeviceDimensions.screenWidth(context) *
                                            0.8,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors
                                              .black, // Adjust the color of the underline as needed
                                          width:
                                              1.0, // Adjust the width of the underline as needed
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'What Type Of Furniture Do You Need Assembled Or Disassembled?',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.035),
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: DeviceDimensions.screenHeight(context) * 0.03,
                      ),
                      Container(
                        //height: DeviceDimensions.screenHeight(context) * 0.09,
                        width: DeviceDimensions.screenWidth(context) * 0.9,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 233, 240),
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
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors
                                              .black, // Adjust the color of the underline as needed
                                          width:
                                              1.0, // Adjust the width of the underline as needed
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'How Long Is Your Task?',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.045),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: DeviceDimensions.screenHeight(context) * 0.03,
                      ),
                      Container(
                        //height: DeviceDimensions.screenHeight(context) * 0.09,
                        width: DeviceDimensions.screenWidth(context) * 0.9,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 233, 240),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Detail Your Task',
                                style: TextStyle(
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.04),
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                maxLines: 2,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    'Provide Us With More Details So We Can Match You With The Perfect Expert Tasker.',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.035),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.02),
                                SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.02),
                                SizedBox(
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.4,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TaskerFormOneScreen()),
                                      );
                                      print('press');
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
                                      'Continue',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.02),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: DeviceDimensions.screenHeight(context) * 0.03,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
