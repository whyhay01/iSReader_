import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_s_reader/study_progress/progress_list.dart';

class StudyProgress extends StatefulWidget {
  const StudyProgress({Key? key}) : super(key: key);

  @override
  _StudyProgressState createState() => _StudyProgressState();
}

class _StudyProgressState extends State<StudyProgress> {
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
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Study progress',
              style: ProgressList().setTextStyle(),),
            ),

            SizedBox(height: 10,),

            Expanded(child: ProgressList().getProgressList()),
          ],
        )

      ),
    );
  }
}
