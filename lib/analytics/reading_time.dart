import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_s_reader/analytics/line_chart.dart';

class ReadingTime extends StatelessWidget {
  const ReadingTime({Key? key}) : super(key: key);



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
             // color: Colors.white,

             margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
             height:MediaQuery.of(context).size.height * .2,
             width:MediaQuery.of(context).size.width * 1 ,
               // child: LineChartReader(),
               child:Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Reading time',
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                   )),
                   SizedBox(height: 20,),
                   Expanded(child: LineChartReader())
                 ],
               )
           )
         );

  }
}
