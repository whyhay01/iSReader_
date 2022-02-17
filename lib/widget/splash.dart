import 'package:flutter/material.dart';
import 'package:i_s_reader/main.dart';
import 'package:i_s_reader/pages/login.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(seconds: 5,
        title: Text('iSReader',
            style: TextStyle(fontSize: 30,
                fontFamily: 'Inter',
                fontStyle: FontStyle.italic,
                color: Colors.blue[20])),
        backgroundColor: Colors.white,
        navigateAfterSeconds:LoginPage(),
        image:Image.asset('chronicles.png'),
        photoSize: 100.0,);
  }
}
