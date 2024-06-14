import 'package:flutter/material.dart';

class OurServicesWidget extends StatelessWidget {
  final String imagePath;
  final String headingText;
  final String detailText;
  final VoidCallback onPressed;
  //final String button_text;

  const OurServicesWidget({
    super.key,
    required this.imagePath,
    required this.headingText,
    required this.detailText,
    required this.onPressed,
    //required this.button_text
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return SizedBox(
      //height: screenHeight * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  width: responsiveSize * 0.4,
                  height: responsiveSize * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              SizedBox(
                height: screenHeight * 0.05,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    headingText,
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: responsiveSize * 0.04,
                        fontFamily: 'Roboto-Medium'),
                    softWrap: true,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.08,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    detailText,
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: responsiveSize * 0.03, fontFamily: 'Roboto'),
                    softWrap: true,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Center(
                child: Container(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.05,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 146, 108, 155),
                      borderRadius: BorderRadius.circular(4)),
                  child: TextButton(
                    onPressed: () {
                      onPressed();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Book Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: responsiveSize * 0.035),
                        ),
                        Icon(Icons.arrow_forward,
                            color: Colors.white, size: responsiveSize * 0.06)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
