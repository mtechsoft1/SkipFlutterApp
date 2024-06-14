import 'package:flutter/material.dart';
import 'package:Skip_The_Task/responsive/device_dimensions.dart';

class TaskerFormTwoScreen extends StatefulWidget {
  const TaskerFormTwoScreen({super.key});

  @override
  State<TaskerFormTwoScreen> createState() => _TaskerFormTwoScreenState();
}

class _TaskerFormTwoScreenState extends State<TaskerFormTwoScreen> {
  bool? _donationChecked = true;

  RangeValues _values = RangeValues(0.0, 100.0);
  static const double _min = 0.0;
  static const double _max = 100.0;

  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _expiryDateController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();

  TextEditingController message_controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    message_controller = TextEditingController();
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

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
                                            '3',
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
                                              1, // Set progress value (0.0 to 1.0)
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
                                      const Text('Confirm Details')
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
                                        'Find Your Tasker And Availability To Your Time',
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
                        //height: DeviceDimensions.screenHeight(context) * 0.28,
                        width: DeviceDimensions.screenWidth(context) * 0.9,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 233, 240),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.03),
                            Text(
                              'Furniture Assembly',
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.045,
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/tasker.png',
                                fit: BoxFit.fill,
                                height:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.25,
                                width:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.25,
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                            Text(
                              'Savannah Nguyen',
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize:
                                    DeviceDimensions.responsiveSize(context) *
                                        0.035,
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/solar_calendar-broken.png'),
                                        SizedBox(
                                          width: DeviceDimensions.screenHeight(
                                                  context) *
                                              0.01,
                                        ),
                                        Text('Tue, Apr 30 at 9:00pm'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.01,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/carbon_location.png'),
                                        SizedBox(
                                          width: DeviceDimensions.screenHeight(
                                                  context) *
                                              0.01,
                                        ),
                                        Flexible(
                                          child: Text(
                                            '85 East Wacker Drive Chicago, Illinois 60601',
                                            //softWrap: true,
                                            // maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.01,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/ph_clock-thin.png'),
                                        SizedBox(
                                          width: DeviceDimensions.screenHeight(
                                                  context) *
                                              0.01,
                                        ),
                                        Text('Small - Est. 1hr'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.01,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/fluent_vehicle-car-profile-ltr-20-regular.png'),
                                        SizedBox(
                                          width: DeviceDimensions.screenHeight(
                                                  context) *
                                              0.01,
                                        ),
                                        Text('Not needed for task'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.01,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width:
                                  DeviceDimensions.screenWidth(context) * 0.25,
                              height:
                                  DeviceDimensions.screenHeight(context) * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(255, 180, 154, 186),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.06,
                                        color: Colors.white),
                                  ),
                                  Image.asset(
                                    'assets/images/ep_edit.png',
                                    fit: BoxFit.cover,
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.03,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height: DeviceDimensions.screenHeight(context) *
                                    0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'Your Task Details',
                                    style: TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        fontSize:
                                            DeviceDimensions.responsiveSize(
                                                    context) *
                                                0.04),
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    maxLines: 2,
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: DeviceDimensions.screenWidth(
                                              context) *
                                          0.8,
                                      child: TextField(
                                        controller: message_controller,
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 3, // Allow unlimited lines
                                        decoration: InputDecoration(
                                          hintText:
                                              'Type the summary of work you need from the tasker please provide the size, equipment /tools etc',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          hintStyle: TextStyle(
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.035,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height: DeviceDimensions.screenHeight(
                                                context) *
                                            0.02),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Price Details',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 6.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Hourly Rate'),
                                        Text('\$46.45/Hr'),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 6.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('GST And Support Fee'),
                                        Text('\$17.10/Hr'),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total',
                                          style: TextStyle(
                                              fontFamily: 'Roboto-Medium',
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                        ),
                                        Text(
                                          '\$63.55/Hr',
                                          style: TextStyle(
                                              fontFamily: 'Roboto-Medium',
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                  child: Text(
                                      "Temporary hold of \$127.10 may appear on your payment method, as most jobs can take up to two hours. Once the job is complete, the hold is removed, and you'll be charged the invoiced amount. Cancel anytime; tasks canceled within 24 hours of start time may incur a one-hour cancellation fee. Tasks have a one-hour minimum.")),
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
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Confirm Details',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.05)),
                                  SizedBox(
                                      height: DeviceDimensions.screenHeight(
                                              context) *
                                          0.01),
                                  Text('Payment Method',
                                      style: TextStyle(
                                          fontFamily: 'Roboto-Medium',
                                          fontSize:
                                              DeviceDimensions.responsiveSize(
                                                      context) *
                                                  0.04)),
                                  const Text(
                                      "You may see a temporary hold on your payment method, reflecting two hours of your Tasker's time. Don't worry - you will only be charged the final invoiced amount once your task is complete."),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(20.0),
                                  //   child: Container(
                                  //     width: DeviceDimensions.screenWidth(
                                  //             context) *
                                  //         0.8,
                                  //     child: Row(
                                  //       children: [
                                  // TextField(
                                  //   controller: _cardNumberController,
                                  //   decoration: InputDecoration(
                                  //     labelText: 'Card Number',
                                  //   ),
                                  //   keyboardType: TextInputType.number,
                                  // ),
                                  //SizedBox(width: 20),
                                  // TextField(
                                  //   controller: _expiryDateController,
                                  //   decoration: InputDecoration(
                                  //     labelText: 'MM/YY',
                                  //   ),
                                  //   keyboardType: TextInputType.number,
                                  // ),
                                  //SizedBox(height: 20),
                                  // TextField(
                                  //   controller: _cvvController,
                                  //   decoration: InputDecoration(
                                  //     labelText: 'CVC',
                                  //   ),
                                  //   keyboardType: TextInputType.number,
                                  //   obscureText: true,
                                  // ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.02,
                                  ),
                                  Container(
                                    width:
                                        DeviceDimensions.screenWidth(context) *
                                            0.8,
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.06,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: DeviceDimensions.screenWidth(
                                                  context) *
                                              0.4,
                                          child: TextField(
                                            controller: _cardNumberController,
                                            decoration: InputDecoration(
                                              labelText: 'Card Number',
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        Container(
                                          width: DeviceDimensions.screenWidth(
                                                  context) *
                                              0.1,
                                          child: TextField(
                                            controller: _expiryDateController,
                                            decoration: InputDecoration(
                                              labelText: 'MM/YY',
                                              labelStyle: TextStyle(
                                                fontSize: DeviceDimensions
                                                        .responsiveSize(
                                                            context) *
                                                    0.025,
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        Container(
                                          width: DeviceDimensions.screenWidth(
                                                  context) *
                                              0.1,
                                          child: TextField(
                                            controller: _cvvController,
                                            decoration: InputDecoration(
                                              labelText: 'CVC',
                                              labelStyle: TextStyle(
                                                fontSize: DeviceDimensions
                                                        .responsiveSize(
                                                            context) *
                                                    0.025,
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                            obscureText: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.02,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          // border: Border(
                                          //   bottom: BorderSide(
                                          //     color: Colors
                                          //         .black, // Adjust the color of the underline as needed
                                          //     width:
                                          //         1.0, // Adjust the width of the underline as needed
                                          //   ),
                                          // ),
                                          ),
                                      child: Text(
                                        'Do You Have Promo Code?',
                                        style: TextStyle(
                                            fontFamily: 'Roboto-Medium',
                                            fontSize:
                                                DeviceDimensions.responsiveSize(
                                                        context) *
                                                    0.045),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      child: Divider(
                                    color: Colors.black,
                                  )),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                                'assets/images/skip-the-task-logo.jpeg'),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              'Join us in helping our neighbors in need find work and a place to call home. Learn More'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  CheckboxListTile(
                                    title: Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            'Donate \$1 to Skip the task for Good',
                                            style: TextStyle(
                                                fontSize: DeviceDimensions
                                                        .responsiveSize(
                                                            context) *
                                                    0.035),
                                          ),
                                        ),
                                      ],
                                    ),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    value: _donationChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _donationChecked = value;
                                      });
                                    },
                                  ),

                                  Container(
                                    width:
                                        DeviceDimensions.screenWidth(context) *
                                            0.35,
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.05,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color.fromARGB(255, 180, 154, 186),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Confirm & Chat',
                                          style: TextStyle(
                                              fontFamily: 'Roboto-Medium',
                                              fontSize: DeviceDimensions
                                                      .responsiveSize(context) *
                                                  0.04,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.02,
                                  ),
                                  Text(
                                      "Don’t worry, you won’t be billed until your task is complete. Once confirmed, you can chat with your Tasker to update the details."),
                                  SizedBox(
                                    height:
                                        DeviceDimensions.screenHeight(context) *
                                            0.02,
                                  ),
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
