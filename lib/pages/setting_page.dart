import 'package:flutter/material.dart';

class PerformancePage extends StatelessWidget {
  @override

  static const int backgroundColor = 0xff4460f2;

  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Settings'),
      centerTitle: true,
      backgroundColor: Color(backgroundColor),
    ),
  );
}