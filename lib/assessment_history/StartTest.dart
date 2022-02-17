import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_s_reader/data/Questions.dart';
import 'package:i_s_reader/pages/setting_page.dart';
import 'package:i_s_reader/utils/Utils.dart';

class StartTest extends StatefulWidget {
  const StartTest({Key? key}) : super(key: key);

  @override
  _StartTestState createState() => _StartTestState();
}

class _StartTestState extends State<StartTest> {
  String name = "Ayodeji";
  //Todo get the current array index displayed to the user
  int currentNumber = 1;
  //Todo get the length of the array
  int allNumber = 10;

 List<Question> questions = [Question(question: "1. Koter spot disease of turnip is caused due to the deficiency of -", firstOption: "a) Phosphorus",
     secondOption: "B) Calcium", thirdOption: "C) Zinc", forthOption: "D) Copper"),
 Question(question: "2. Pennisetum glaucum is the scientific name of -",firstOption: "A) Rice",secondOption: "B) Wheat",thirdOption: "C) Bajra", forthOption: "D) Barley")];



  @override
  Widget build(BuildContext context)=>Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('Assessment'),
        centerTitle: true,
        backgroundColor: Color(SettingsPage.backgroundColor),
      ),
      body:Container(
          color: Colors.blueGrey[100],
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container( color: Colors.white,
                  margin: EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
                  height: 100,
                  // height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0,20.0, 0.0,15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello",
                              style: TextStyle(color:Colors.grey,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1,),
                            ),
                            Text(name,
                                style: TextStyle(color:Colors.black,
                                  fontSize: 28,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,)
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0,20.0, 15.0,15.0),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // textDirection: TextDirection.ltr,
                            children: [
                              Text("Today's date",
                                style: TextStyle(color: Colors.grey,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 1),
                              ),
                              SizedBox(height: 10,),
                              Text(Utils().currentDate(),
                                style: TextStyle(color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 1),)
                            ],
                          )
                      )
                    ],
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.fromLTRB(15.0,0.0,15.0,5.0),
                    child:Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[Text("Question $currentNumber of $allNumber",
                          style: TextStyle(color:Colors.black,
                            fontSize:18,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Inter',)
                          ),
                            Row(
                              children:[
                                Icon(Icons.alarm),
                                SizedBox(width: 10,),
                                Text("$_start:00",
                                style: TextStyle(fontSize: 20,
                                fontFamily: 'Inter'),),
                                SizedBox(width: 10,),

                                MaterialButton(onPressed: (){
                                  resetTimer();
                                },
                                  child: Text("Submit Test",
                                  style: TextStyle(color: Colors.white ),),
                                  color:Color(SettingsPage.backgroundColor),
                                  padding: EdgeInsets.all(10),
                                  shape:RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.white70, width: 1),
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                )
                            ]
                            )


                      ]
                      ),
                    )
                ),

                Container(color: Colors.white,
                width:MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height*0.2,
                margin: EdgeInsets.fromLTRB(15,5,15,5),
                child: Text(""),),

                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: MaterialButton(onPressed: (){
                    startTimer();
                  },
                    color: Color(SettingsPage.backgroundColor),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: const EdgeInsets.all(10),
                    textColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60.0,10.0,60.0,10.0),
                      child: Text("Start Test",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    elevation: 6.0,
                  ),
                ),

              ],
            ),
          )

      )
  );

  late Timer _timer;
  int _start = 10;
  String buttonState ="End Test";

  void resetTimer(){
    if(_start ==0){
      _start = 10;
    }
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        }
        //   else if(_start ==0|| _start == 10){
        //   setState(() {
        //     buttonState = "Start Text";
        //   });
        // }

         else {
          setState(() {
            _start--;
          });
        }
        // _start = 10;
      },
    );
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }



}
