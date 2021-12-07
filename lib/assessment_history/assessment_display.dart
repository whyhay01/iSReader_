import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssessmentDisplay extends StatefulWidget {
  const AssessmentDisplay({Key? key}) : super(key: key);

  @override
  _AssessmentDisplayState createState() => _AssessmentDisplayState();
}

class _AssessmentDisplayState extends State<AssessmentDisplay> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 4,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    height: MediaQuery.of(context).size.height * .3,
    width: MediaQuery.of(context).size.width * 1,
        child: Center(child: Text('Under Construction')),)
    );
  }
}
