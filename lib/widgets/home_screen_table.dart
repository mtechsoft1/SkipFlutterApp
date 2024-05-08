import 'package:flutter/material.dart';

class TableCellWidget extends StatelessWidget {
  final String text1;
  final String imagePath;
  final String text2;

  const TableCellWidget({
    required this.text1,
    required this.imagePath,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.15,
      //color: Colors.amber,
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: screenHeight * 0.04,
                  child: Text(
                    text1,
                    style: TextStyle(
                        fontFamily: 'Roboto-Bold',
                        color: Color.fromARGB(255, 92, 35, 105),
                        fontSize: responsiveSize * 0.06),
                  )),
              SizedBox(
                height: screenHeight * 0.07,
                child: Image.asset(
                  imagePath,
                  // width: 100,
                  // height: 100,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
                child: Text(
                  text2,
                  style: TextStyle(
                      fontFamily: 'Roboto-Bold',
                      color: Color.fromARGB(255, 91, 92, 94),
                      fontSize: responsiveSize * 0.04),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
