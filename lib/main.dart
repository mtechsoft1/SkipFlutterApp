import 'package:flutter/material.dart';
import 'package:task_rabbit/home_screen.dart';
import 'package:task_rabbit/new.dart';
import 'package:task_rabbit/screen.dart';
import 'package:task_rabbit/splash_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:task_rabbit/user_location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Rabbit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: New(),
      //home: HomeScreen(),
      //home: Screen(),
      home: UserLocation(),
    );
  }
}
