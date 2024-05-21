import 'package:flutter/material.dart';
import 'package:task_rabbit/location_service/location_helper.dart';
import 'package:task_rabbit/screens/user_side/home_screen.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  void initState() {
    super.initState();
    // Call getLocation method in initState
    LocationHelper.getLocation(context);
  }

  @override
  Widget build(BuildContext context) {
    // LocationHelper.getLocation(context);
    // return Scaffold(
    // body: ResponsiveLayout(
    //     mobile_body: MobileBody(),
    //     desktop_body: DesktopBody()),
    //     );
    return const HomeScreen();
    //return HiringTaskerScreen();
  }
}
