import 'package:flutter/material.dart';

import 'package:task_rabbit/screens/user_side/new.dart';

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
      home: const New(),
    );
  }
}
