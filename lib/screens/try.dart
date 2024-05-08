import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  const Try({super.key});

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  final List<String> imageIconPaths = [
    'assets/images/assembly2.png',
    'assets/images/drill.png',
    'assets/images/move.png',
    'assets/images/cleaning2.png',
    'assets/images/arrow.png',
    // Add more image paths as needed
  ];

  final List<String> imagePaths = [
    'assets/images/clean.jpeg',
    'assets/images/clean.jpeg',
    'assets/images/clean.jpeg',
    'assets/images/clean.jpeg',
    // Add more image paths as needed
  ];

  final List<String> texts = [
    'House Cleaning',
    'Kitchen Cleaning',
    'Other',
    'Carpet Cleaning'
    // Add more texts as needed
  ];

  final List<String> roundimagetexts = [
    'Crib Assembly',
    'PAX Assembly',
    'Desk Assembly',
    'Furniture Assembly'
    // Add more texts as needed
  ];

  final List<String> voucherPath = [
    'assets/images/voucher.jpeg',
    'assets/images/voucher.jpeg',
    'assets/images/voucher.jpeg',
    'assets/images/voucher.jpeg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    bool isWeb(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          body: Container(color: Colors.amber),
        ),
      ),
    );
  }
}
