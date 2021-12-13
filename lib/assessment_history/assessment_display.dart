import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        // shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
        margin: EdgeInsets.fromLTRB(15, 20.0, 10.0, 10.0),
    height: MediaQuery.of(context).size.height * .3,
    width: MediaQuery.of(context).size.width * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Assessment History',
            style: TextStyle(color: Colors.black,
            fontSize:18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1),),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,8.0,8.0,5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Basic Technology',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),),
                  Text('Type',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),),
                  Text('5/10',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),),
                ],
              ),
            ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Basic Technology',
              style: setTextStyle()
            ),
            Text('Speed',
              style: setTextStyle()
            ),
            Text('5/10',
              style: setTextStyle()
            ),
          ],),

            Divider(
              height: 10.0,
              color: Color(0xffaaaaaa),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chemistry',
                    style: setTextStyle()
                ),
                Text('Normal',
                    style: setTextStyle()
                ),
                Text('5/10',
                    style: setTextStyle()
                ),
              ],),

            Divider(
              height: 10.0,
                color: Color(0xffaaaaaa),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mathematics',
                    style: setTextStyle()
                ),
                Text('Speed',
                    style: setTextStyle()
                ),
                Text('5/10',
                    style: setTextStyle()
                ),
              ],),

            Divider(
              height: 10.0,
              color: Color(0xffaaaaaa),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English Language',
                    style: setTextStyle()
                ),
                Text('Normal',
                    style: setTextStyle()
                ),
                Text('5/10',
                    style: setTextStyle()
                ),
              ],),
      ] ),
        )
    );
  }

  TextStyle setTextStyle(){
    return TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.normal,);
  }
}
