import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:task_rabbit/location_service/location_helper.dart';
import 'package:task_rabbit/responsive/desktop_body.dart';
import 'package:task_rabbit/responsive/mobile_body.dart';
import 'package:task_rabbit/responsive/responsive_layout.dart';
import 'package:task_rabbit/screens/home_screen.dart';
import 'package:task_rabbit/screens/try.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  void initState() {
    super.initState();
    // Call getLocation method in initState
    LocationHelper.getLocation(context);
  }

  @override
  Widget build(BuildContext context) {
    // LocationHelper.getLocation(context);
    return Scaffold(
        body: ResponsiveLayout(
            mobile_body: MobileBody(),
            desktop_body: DesktopBody()),
            );
    return Try();
  }
}
