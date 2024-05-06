import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:task_rabbit/responsive/desktop_body.dart';
import 'package:task_rabbit/responsive/mobile_body.dart';
import 'package:task_rabbit/responsive/responsive_layout.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  void getLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
            mobile_body: MobileBody(), desktop_body: DesktopBody()));
  }
}
