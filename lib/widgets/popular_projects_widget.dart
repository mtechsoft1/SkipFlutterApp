import 'package:flutter/material.dart';

class PopularProjectsWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final String button_text;

  const PopularProjectsWidget(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.button_text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Image.asset(
                  imagePath,
                  // width: 100,
                  // height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                height: screenHeight * 0.07,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: responsiveSize * 0.04,
                        fontFamily: 'Roboto-Medium'),
                    softWrap: true,
                  ),
                ),
              ),
              //SizedBox(height: screenHeight * 0.005),
              SizedBox(
                width: screenWidth * 0.35,
                height: screenHeight * 0.04,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 146, 108, 155),
                        borderRadius: BorderRadius.circular(4)),
                    child: TextButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      child: Text(
                        button_text,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
