import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';

class TeamCarouselWidget extends StatefulWidget {
  @override
  _TeamCarouselWidgetState createState() => _TeamCarouselWidgetState();
}

class _TeamCarouselWidgetState extends State<TeamCarouselWidget> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: taskerImgList.length,
          itemBuilder: (context, index, _) {
            return buildCarouselItem(index, context);
          },
          options: CarouselOptions(
            aspectRatio: 1,
            viewportFraction: 0.56,
            enlargeCenterPage: false,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          carouselController: _controller,
        ),
        SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
        buildDotIndicator(),
        SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
      ],
    );
  }

  Widget buildCarouselItem(int index, BuildContext context) {
    String item = taskerImgList[index];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 239, 233, 240),
            borderRadius: BorderRadius.circular(12),
          ),
          width: DeviceDimensions.screenWidth(context) * 0.5,
          height: DeviceDimensions.screenHeight(context) * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: DeviceDimensions.responsiveSize(context) * 0.4,
                  height: DeviceDimensions.responsiveSize(context) * 0.6,
                ),
              ),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
              Text(
                taskerNameList[index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: DeviceDimensions.responsiveSize(context) * 0.05,
                  fontFamily: 'Roboto-Medium',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.01),
              Text(
                taskerPositionList[index],
                style: TextStyle(
                  color: Color.fromARGB(255, 92, 35, 105),
                  fontSize: DeviceDimensions.responsiveSize(context) * 0.04,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              SizedBox(height: DeviceDimensions.screenHeight(context) * 0.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/instagram.png'),
                  Image.asset('assets/images/divider.png'),
                  Image.asset('assets/images/facebook.png'),
                  Image.asset('assets/images/divider.png'),
                  Image.asset('assets/images/x.png')
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildDotIndicator() {
    return Container(
      height: DeviceDimensions.screenHeight(context) * 0.02,
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: taskerImgList.map((url) {
          int index = taskerImgList.indexOf(url);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
            child: Container(
              width: 8,
              height: 8,
              //margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.black : Colors.grey,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

final List<String> taskerImgList = [
  'assets/images/team1.png',
  'assets/images/team2.png',
  'assets/images/team3.png',
];
final List<String> taskerNameList = [
  'Taylor Morgan',
  'John Cameron',
  'Casey Lyium'
];

final List<String> taskerPositionList = [
  'Material Technician',
  'Mechatronics Engineer',
  'Systems Integrator'
];
