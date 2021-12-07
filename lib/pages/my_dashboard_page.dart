import 'package:flutter/material.dart';
import 'package:i_s_reader/pages/setting_page.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('My Dashboard'),
      centerTitle: true,
      backgroundColor: Color(PerformancePage.backgroundColor),
    ),
  );
}