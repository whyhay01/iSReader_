import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Utils extends State{
  // This method return today's date in the format dd-mm-yy
  String currentDate(){
    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(now);
    return (formattedDate);
  }

  late Timer _timer;


  startTimer(int _startTime) {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_startTime == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _startTime -= _startTime;
          });
        }
      },
    );
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}