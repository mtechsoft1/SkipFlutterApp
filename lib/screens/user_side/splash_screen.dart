import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/background-image.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.deepPurple.withOpacity(0.4), BlendMode.overlay),
          ),
        ),
        child: Stack(
          //alignment: Alignment.center,
          children: [
            Positioned(
              top: screenHeight * 0.5,
              left: screenWidth * 0.1,
              child: Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.26,
                decoration: BoxDecoration(
                  color: Color.fromARGB(1, 204, 187, 209)
                      .withOpacity(0.5), // Box color
                  borderRadius: BorderRadius.circular(20.0), // Adjust as needed
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.02),
                    Image(
                        image: AssetImage(
                            'assets/images/skip-the-task-logo.jpeg')),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      'Welcome to Skip The Task',
                      style: TextStyle(
                          fontFamily: 'Roboto-Bold',
                          color: Colors.white,
                          fontSize: responsiveSize * 0.055),
                      //textAlign: TextAlign.left,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text('Join Us Today\nLet Us Assist You In Your Work',
                        style: TextStyle(
                            fontFamily: 'Roboto-Medium',
                            color: Colors.white,
                            fontSize: responsiveSize * 0.04)),
                  ],
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.8,
                left: screenWidth * 0.2,
                child: SizedBox(
                    width: screenWidth * 0.6,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(1, 92, 35, 105).withOpacity(
                                0.9)), // Set your desired color here
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
