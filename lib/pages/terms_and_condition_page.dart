import 'package:flutter/material.dart';
import 'package:i_s_reader/pages/setting_page.dart';

class TermsAndConditionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Terms and Condition'),
      centerTitle: true,
      backgroundColor: Color(SettingsPage.backgroundColor),
    ),
  );
}