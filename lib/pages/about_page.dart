import 'package:flutter/material.dart';
import 'package:i_s_reader/pages/setting_page.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('About'),
      centerTitle: true,
      backgroundColor: Color(SettingsPage.backgroundColor),
    ),
  );
}