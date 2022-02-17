
import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:i_s_reader/assessment_history/StartTest.dart';
import 'package:i_s_reader/pages/setting_page.dart';
import 'package:i_s_reader/utils/Utils.dart';
import 'package:intl/intl.dart';



class AssessmentPage extends StatefulWidget {
  const AssessmentPage({Key? key}) : super(key: key);


  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
   String name = "Ayodeji";

   var subjects = [
     "Mathematics", "English", "Chemistry", "Biology", "Physics","Social Studies",
     "Agricultural Science", "Basic Science", "Economics", "Select Option"];

   var initialSelectedSubject = "Select Option";

   var testType = ["Speed","Normal","UTME","Quick","Select Option"];
   var initialSelectedTest = "Select Option";

   var timeList =["20 min","15 min","10","7 min","5 min", "3 min","Select Option"];
   var initialSelectedTime = "Select Option";

  @override
  Widget build(BuildContext context) => Scaffold(
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
            padding: const EdgeInsets.fromLTRB(15.0,10.0,15.0,5.0),
            child:Expanded(
              child: Text("Welcome to the Assessment page.",
              style: TextStyle(color:Color(SettingsPage.backgroundColor),
              fontSize:25,
              fontWeight: FontWeight.normal,
              fontFamily: 'Inter',),
              overflow: TextOverflow.visible,
            ),
            )
          ),
          Padding(
           padding: const EdgeInsets.fromLTRB(15.0,10.0,15.0,5.0),
           child: Expanded(
               child:Text("What test will you like to take?",
                 textAlign: TextAlign.left,
                  style: TextStyle(color:Colors.black,
                  fontSize:18,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Inter',),
           ),
           )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(15,10,15,5),
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0,0,0,0),
                    child: Text("Choose Subject",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child:Padding(padding: EdgeInsets.fromLTRB(12,5,12,5),
                        child: DropdownButton( value: initialSelectedSubject,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          dropdownColor: Colors.white,
                          // isExpanded: true,
                          iconSize: 24,
                          items: subjects.map((String subject)=> DropdownMenuItem<String>(value:subject, child: Text(subject))).toList(),
                          onChanged: (String? selectedSubject){
                            setState(() {
                              this.initialSelectedSubject = selectedSubject!;
                            });
                          },
                        ),
                      )
                  ),
                ],
                ),

                SizedBox(width:50),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(15.0,0,0,0),
                      child: Text("Choose Duration",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70, width: 1),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child:Padding(padding: EdgeInsets.fromLTRB(12,5,12,5),
                          child: DropdownButton( value: initialSelectedTime,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            dropdownColor: Colors.white,
                            // isExpanded: true,
                            iconSize: 24,
                            items: timeList.map((String time)=> DropdownMenuItem<String>(value:time, child: Text(time))).toList(),
                            onChanged: (String? time){
                              setState(() {
                                this.initialSelectedTime = time!;
                              });
                            },
                          ),
                        )
                    ),
                  ],
                ),

                SizedBox(width:50),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(15.0,0,0,0),
                      child: Text("Choose Test Type",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),

                    SizedBox(height:10),

                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70, width: 1),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child:Padding(padding: EdgeInsets.fromLTRB(12,5,12,5),
                          child: DropdownButton( value: initialSelectedTest,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            dropdownColor: Colors.white,
                            // isExpanded: true,
                            iconSize: 24,
                            items: testType.map((String test)=> DropdownMenuItem<String>(value:test, child: Text(test))).toList(),
                            onChanged: (String? test){
                              setState(() {
                                this.initialSelectedTest = test!;
                              });
                            },
                          ),
                        )
                    )

                  ],
                )
              ],
            ),
            )
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StartTest()),
                );
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
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(15.0,5.0, 15.0, 5.0),
            child: Text("History",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
          ),

          //Table items
         Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("Subject",
                        style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Inter',
                          fontSize: 18
                        ),
                        )),

                        DataColumn(label: Text("Type",
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter',
                              fontSize: 18
                          ),
                        )),

                        DataColumn(label: Text("Duration(Min)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter',
                              fontSize: 18
                          ),
                        )),

                        DataColumn(label: Text("Result(%)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter',
                              fontSize: 18
                          ),
                        )),

                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("English Language",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("UTME",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("10",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("80",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                        ],color: MaterialStateProperty.all(Colors.white)),
                        DataRow(cells: [
                          DataCell(Text("Mathematics",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("Speed",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("20",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("90",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                        ],color: MaterialStateProperty.all(Colors.white)),
                        DataRow(cells: [
                          DataCell(Text("Basic Science",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("Speed",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("20",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("90",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                        ],color: MaterialStateProperty.all(Colors.white)),
                        DataRow(cells: [
                          DataCell(Text("Chemistry",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("Speed",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("20",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                          DataCell(Text("90",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                fontSize: 18
                            ),
                          )
                          ),
                        ],color: MaterialStateProperty.all(Colors.white)),
                    ],
                    )

                        ),
                    ),
        ],
        ),
      )

    )
  );

}