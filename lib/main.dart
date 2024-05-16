import 'package:flutter/material.dart';

import 'package:task_rabbit/screens/new.dart';
import 'package:task_rabbit/widgets/build_team_carousel_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title: 'Task Rabbit',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const New(),
      //home: HomeScreen(),
      //home: Screen(),
      //home: UserLocation(),
      //home: LocationService(),
      //home: TeamCarousel(),
    );
  }
}
