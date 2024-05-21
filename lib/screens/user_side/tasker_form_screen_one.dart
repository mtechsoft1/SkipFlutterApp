import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';
import 'package:task_rabbit/screens/user_side/tasker_form_screen_two.dart';

class TaskerFormOneScreen extends StatefulWidget {
  const TaskerFormOneScreen({super.key});

  @override
  State<TaskerFormOneScreen> createState() => _TaskerFormOneScreenState();
}

class _TaskerFormOneScreenState extends State<TaskerFormOneScreen> {
  bool? _morningChecked = false;
  bool? _afternoonChecked = false;
  bool? _eveningChecked = false;

  RangeValues _values = RangeValues(0.0, 100.0);
  static const double _min = 0.0;
  static const double _max = 100.0;
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
                        //height: DeviceDimensions.screenHeight(context) * 0.28,
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
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6.0),
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
                                          textAlign: TextAlign.center,
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
                                          horizontal: 6.0),
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
                                          textAlign: TextAlign.center,
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
                                          horizontal: 6.0),
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
                                          textAlign: TextAlign.center,
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
                                          horizontal: 6.0),
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
                                          textAlign: TextAlign.center,
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
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width:
                                        DeviceDimensions.screenWidth(context) *
                                            0.4,
                                    //color: Colors.blue,
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0),
                                            child: Text(
                                              'Time Of Day',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: DeviceDimensions
                                                          .responsiveSize(
                                                              context) *
                                                      0.04,
                                                  fontFamily: 'Roboto-Medium'),
                                            ),
                                          ),
                                          CheckboxListTile(
                                            title: Text(
                                              'Morning 8am - 12pm',
                                              style: TextStyle(
                                                  fontSize: DeviceDimensions
                                                          .responsiveSize(
                                                              context) *
                                                      0.035),
                                            ),
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            value: _morningChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _morningChecked = value;
                                              });
                                            },
                                          ),
                                          CheckboxListTile(
                                            title: Text(
                                              'Afternoon 12pm - 5pm',
                                              style: TextStyle(
                                                  fontSize: DeviceDimensions
                                                          .responsiveSize(
                                                              context) *
                                                      0.035),
                                            ),
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            value: _afternoonChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _afternoonChecked = value;
                                              });
                                            },
                                          ),
                                          CheckboxListTile(
                                            title: Text(
                                              'Evening 5pm - 9:30pm',
                                              style: TextStyle(
                                                  fontSize: DeviceDimensions
                                                          .responsiveSize(
                                                              context) *
                                                      0.035),
                                            ),
                                            value: _eveningChecked,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _eveningChecked = value;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    //color: Colors.green,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Text(
                                            '--Choose A Suitable Time--',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: DeviceDimensions
                                                        .responsiveSize(
                                                            context) *
                                                    0.04,
                                                fontFamily: 'Roboto-Medium'),
                                          ),
                                        ),
                                        Container(
                                          height: DeviceDimensions.screenHeight(
                                                  context) *
                                              0.05,
                                          width: DeviceDimensions.screenWidth(
                                                  context) *
                                              0.4,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(),
                                          ),
                                          child: Center(
                                            child: DropdownButton<String>(
                                              value: 'Choose Time',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ), // Initially selected value
                                              onChanged: (String? newValue) {
                                                // Handle dropdown value change
                                              },
                                              items: <String>[
                                                'Choose Time',
                                                '8am',
                                                '12pm',
                                                '5pm',
                                              ] // Dropdown items
                                                  .map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            RangeSlider(
                                              values: _values,
                                              min: _min,
                                              max: _max,
                                              onChanged:
                                                  (RangeValues newValues) {
                                                setState(() {
                                                  _values = newValues;
                                                });
                                              },
                                              divisions: _max.toInt(),
                                              labels: RangeLabels(
                                                _values.start
                                                    .round()
                                                    .toString(),
                                                _values.end.round().toString(),
                                              ),
                                              activeColor: Color.fromARGB(
                                                  255,
                                                  92,
                                                  35,
                                                  105), // Change the color of the active part of the slider bar
                                              inactiveColor: Colors
                                                  .grey, // Change the color of the inactive part of the slider bar
                                              //thumbColor: Colors.red,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text('\$10'),
                                              Spacer(),
                                              Text('\$150')
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                'The Average per hour rate is : '),
                                            Text('\$3.21',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Roboto-Medium')),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02)
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
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/images/tasker.png',
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('View Profile & Continue',
                                            style: TextStyle(
                                                fontFamily: 'Roboto-Medium')),
                                      ),
                                      SizedBox(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.4,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TaskerFormTwoScreen()),
                                            );
                                            print('press');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color
                                                .fromARGB(255, 92, 35,
                                                105), // Set the background color of the button
                                            // Set the text color
                                          ),
                                          child: const Text(
                                            'Continue',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                              'You can chat with your Tasker, adjust task details, or change task time after booking.'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                  vertical: 10,
                                ),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.amber,
                                            size:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.05),
                                        Text('5.0 (887 reviews)'),
                                      ],
                                    ),
                                    Text('1525 Furniture Assembly tasks',
                                        style: TextStyle(
                                            fontFamily: 'Roboto-medium')),
                                    Text('1516 Assembly tasks overall'),
                                    Text('Vehicle : Car')
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 204, 187, 209),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('\$46.45/Hr'),
                                          ))
                                    ],
                                  ),
                                  Text('How I can help:',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04)),
                                  const Text(
                                      'Will bring all tools necessary for the task and will be very mindful to do the job well. Please detail well if anything needs to be mounted. 2 hour minimum for bookings on Saturday and Sunday.'),
                                  const Text('Read More',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 92, 35, 105),
                                          fontFamily: 'Roboto-Medium')),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/review-person.png'),
                                      ),
                                      SizedBox(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.02,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Smith Adam',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Roboto-Medium'),
                                                ),
                                                Text(
                                                  'on Sun Apr 28',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Roboto-Medium'),
                                                ),
                                              ],
                                            ),
                                            Text(
                                                '"Giovanny was great. I highly recommend him. "')
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
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
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/images/tasker.png',
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('View Profile & Continue',
                                            style: TextStyle(
                                                fontFamily: 'Roboto-Medium')),
                                      ),
                                      SizedBox(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.4,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TaskerFormTwoScreen()),
                                            );
                                            print('press');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color
                                                .fromARGB(255, 92, 35,
                                                105), // Set the background color of the button
                                            // Set the text color
                                          ),
                                          child: const Text(
                                            'Continue',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                              'You can chat with your Tasker, adjust task details, or change task time after booking.'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                  vertical: 10,
                                ),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.amber,
                                            size:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.05),
                                        Text('5.0 (887 reviews)'),
                                      ],
                                    ),
                                    Text('1525 Furniture Assembly tasks',
                                        style: TextStyle(
                                            fontFamily: 'Roboto-medium')),
                                    Text('1516 Assembly tasks overall'),
                                    Text('Vehicle : Car')
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 204, 187, 209),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('\$46.45/Hr'),
                                          ))
                                    ],
                                  ),
                                  Text('How I can help:',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04)),
                                  const Text(
                                      'Will bring all tools necessary for the task and will be very mindful to do the job well. Please detail well if anything needs to be mounted. 2 hour minimum for bookings on Saturday and Sunday.'),
                                  const Text('Read More',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 92, 35, 105),
                                          fontFamily: 'Roboto-Medium')),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/review-person.png'),
                                      ),
                                      SizedBox(
                                        width: DeviceDimensions.screenWidth(
                                                context) *
                                            0.02,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Smith Adam',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Roboto-Medium'),
                                                ),
                                                Text(
                                                  'on Sun Apr 28',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Roboto-Medium'),
                                                ),
                                              ],
                                            ),
                                            Text(
                                                '"Giovanny was great. I highly recommend him. "')
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: DeviceDimensions.screenHeight(context) * 0.03,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
