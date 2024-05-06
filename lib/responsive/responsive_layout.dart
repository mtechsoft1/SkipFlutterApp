import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile_body;
  final Widget desktop_body;

  const ResponsiveLayout(
      {super.key, required this.mobile_body, required this.desktop_body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < mobileWidth)
        return mobile_body;
      else
        return desktop_body;
    }));
  }
}
