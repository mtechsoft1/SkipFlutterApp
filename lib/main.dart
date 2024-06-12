import 'package:flutter/material.dart';

import 'package:Skip_The_Task/screens/user_side/new.dart';

void main() {
  // Enable logging
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
      title: 'Skip The Task',
      debugShowCheckedModeBanner: false,
      home: const New(),
    );
  }
}
