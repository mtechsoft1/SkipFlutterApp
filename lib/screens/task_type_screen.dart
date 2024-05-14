import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/screens/tasker_form_screen_one.dart';
import 'package:task_rabbit/widgets/items_widget.dart';

class TaskTypeScreen extends StatefulWidget {
  const TaskTypeScreen({super.key});

  @override
  State<TaskTypeScreen> createState() => _TaskTypeScreenState();
}

class _TaskTypeScreenState extends State<TaskTypeScreen> {
  String selectedTimeOption = '';
  String selectedVehicleOption = '';
  String? selectedItemValue = '';
  int? selectedCell;

  TextEditingController message = TextEditingController();
  @override
  void initState() {
    super.initState();
    message = TextEditingController();
  }

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
                    height: DeviceDimensions.screenHeight(context) * 0.22,
                    child: Column(children: [
                      Column(
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
                                  SizedBox(
                                    width: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.09, // Adjust size as needed
                                    height: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.09, // Adjust size as needed
                                    child: const CircularProgressIndicator(
                                      strokeWidth:
                                          2, // Adjust thickness of the progress indicator
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors
                                              .white), // Change progress indicator color
                                      backgroundColor: Colors
                                          .transparent, // Make progress indicator background transparent
                                      value:
                                          0.3, // Set progress value (0.0 to 1.0)
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
                                color: const Color.fromARGB(255, 92, 35, 105),
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
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
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
                                    padding: const EdgeInsets.all(8.0),
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
                SizedBox(
                  height: DeviceDimensions.screenHeight(context) * 0.28,
                  width: DeviceDimensions.screenWidth(context) * 0.9,
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
                        height: DeviceDimensions.screenHeight(context) * 0.2,
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
                            // SizedBox(
                            //     height: DeviceDimensions.screenHeight(context) *
                            //         0.02),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width:
                                    DeviceDimensions.screenWidth(context) * 0.8,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20), // Adjust padding as needed
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.location_on_outlined),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'London, KY, USA',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.035),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // SizedBox(
                            //     height: DeviceDimensions.screenHeight(context) *
                            //         0.02),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: DeviceDimensions.screenWidth(context) *
                                      0.8,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          20), // Adjust padding as needed
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.done,
                                          size: DeviceDimensions.responsiveSize(
                                                  context) *
                                              0.04,
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Good news! skip-the-task employees is available in your area',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.03,
                                            color: const Color.fromARGB(
                                                255, 92, 35, 105),
                                          ),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                          ],
                        ),
                      ),
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
                                    fontSize: DeviceDimensions.responsiveSize(
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.8,
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
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.035),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              ItemsWidget(
                                imagePath: 'assets/images/chair.png',
                                text2: 'Chairs',
                                isSelected: selectedCell == 0,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value! ? 0 : null;
                                  });
                                },
                              ),
                              ItemsWidget(
                                imagePath: 'assets/images/couchandsofa.png',
                                text2: 'Couch & Sofas',
                                isSelected: selectedCell == 1,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value! ? 1 : null;
                                  });
                                },
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              ItemsWidget(
                                imagePath: 'assets/images/ottoman.png',
                                text2: 'Ottomans',
                                isSelected: selectedCell == 2,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value! ? 2 : null;
                                  });
                                },
                              ),
                              ItemsWidget(
                                imagePath: 'assets/images/cabinet.png',
                                text2: 'Cabinets',
                                isSelected: selectedCell == 3,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value! ? 3 : null;
                                  });
                                },
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              ItemsWidget(
                                imagePath: 'assets/images/dining.png',
                                text2: 'Dining Furniture',
                                isSelected: selectedCell == 4,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value! ? 4 : null;
                                  });
                                },
                              ),
                              ItemsWidget(
                                imagePath: 'assets/images/lounge.png',
                                text2: 'Coffee Table',
                                isSelected: selectedCell == 5,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value! ? 5 : null;
                                  });
                                },
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              ItemsWidget(
                                imagePath: 'assets/images/wardrobe.png',
                                text2: 'Wardrobe & Cupboard',
                                isSelected: selectedCell == 6,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value! ? 0 : null;
                                  });
                                },
                              ),
                              ItemsWidget(
                                imagePath: 'assets/images/wardrobe.png',
                                text2: 'Wardrobe & Cupboard',

                                isSelected: selectedCell ==
                                    7, // Check if this instance's index matches the selected index
                                // Unique index for this instance
                                onChanged: (value) {
                                  setState(() {
                                    selectedCell = value!
                                        ? 7
                                        : null; // Set selectedCell to this instance's index if it's selected
                                  });
                                },
                              ),
                            ],
                          )
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
                                    fontSize: DeviceDimensions.responsiveSize(
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
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
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.045),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: RadioListTile(
                              activeColor:
                                  const Color.fromARGB(255, 92, 35, 105),
                              title: const Text('Small-Est. 1 Hr'),
                              value: 'Small-Est. 1 Hr',
                              groupValue: selectedTimeOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedTimeOption = value.toString();
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: RadioListTile(
                              activeColor:
                                  const Color.fromARGB(255, 92, 35, 105),
                              title: const Text('Medium-Est. 2-3 Hrs'),
                              value: 'Medium-Est. 2-3 Hrs',
                              groupValue: selectedTimeOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedTimeOption = value.toString();
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: RadioListTile(
                              activeColor:
                                  const Color.fromARGB(255, 92, 35, 105),
                              title: const Text('Large-Est. 4+ Hrs'),
                              value: 'Large-Est. 4+ Hrs',
                              groupValue: selectedTimeOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedTimeOption = value.toString();
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: RadioListTile(
                              activeColor:
                                  const Color.fromARGB(255, 92, 35, 105),
                              title: const Text("Don't Know"),
                              value: "Don't Know",
                              groupValue: selectedTimeOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedTimeOption = value.toString();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
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
                                'Vehicle Requirements',
                                style: TextStyle(
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.045),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: RadioListTile(
                              activeColor:
                                  const Color.fromARGB(255, 92, 35, 105),
                              title: const Text('Not Needed for Task'),
                              value: 'Not Needed For Task',
                              groupValue: selectedVehicleOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedVehicleOption = value.toString();
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: RadioListTile(
                              activeColor:
                                  const Color.fromARGB(255, 92, 35, 105),
                              title: const Text('Task Needs a Car'),
                              value: 'Task Needs a Car',
                              groupValue: selectedVehicleOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedVehicleOption = value.toString();
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: RadioListTile(
                              activeColor:
                                  const Color.fromARGB(255, 92, 35, 105),
                              title: const Text('Task Needs a Truck'),
                              value: 'Task Needs a Truck',
                              groupValue: selectedVehicleOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedVehicleOption = value.toString();
                                });
                              },
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Detail Your Task',
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
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Provide Us With More Details So We Can Match You With The Perfect Expert Tasker.',
                              style: TextStyle(
                                  fontFamily: 'Roboto-Medium',
                                  fontSize:
                                      DeviceDimensions.responsiveSize(context) *
                                          0.035),
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(
                              height: DeviceDimensions.screenHeight(context) *
                                  0.02),
                          SizedBox(
                            width: DeviceDimensions.screenWidth(context) * 0.8,
                            // height:
                            //     DeviceDimensions.screenHeight(context) * 0.4,
                            child: TextField(
                              controller: message,
                              keyboardType: TextInputType.multiline,
                              maxLines: 4, // Allow unlimited lines
                              decoration: InputDecoration(
                                  hintText:
                                      'Type the summary of work you need from the tasker please provide the size, equipment /tools etc',
                                  border: const OutlineInputBorder(),
                                  hintStyle: TextStyle(
                                    fontSize: DeviceDimensions.responsiveSize(
                                            context) *
                                        0.035,
                                  )),
                            ),
                          ),
                          SizedBox(
                              height: DeviceDimensions.screenHeight(context) *
                                  0.02),
                          SizedBox(
                            width: DeviceDimensions.screenWidth(context) * 0.4,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TaskerFormOneScreen()),
                                );
                                //print('press');
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
                              height: DeviceDimensions.screenHeight(context) *
                                  0.02),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DeviceDimensions.screenHeight(context) * 0.03,
                ),
              ],
            ))
      ]),
    )));
  }
}
