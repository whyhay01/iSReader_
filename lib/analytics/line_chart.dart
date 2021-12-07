import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class LineChartReader extends StatefulWidget {


  @override
  _LineChartReaderState createState() => _LineChartReaderState();
}

class _LineChartReaderState extends State<LineChartReader> {
  void startCreatingDemoData() async {
    for (int i = 0; i < 8; i++) {
      if (i == 0) continue;
      await Future.delayed((Duration(seconds: 1))).then(
            (value) {
          Random random = Random();
          flspots.add(
            FlSpot(
              double.parse(i.toString()),
              random.nextDouble() * 6,
            ),
          );
          setState(() {
            setChartData();
          });
        },
      );
    }
  }

  LineChartData data = LineChartData();
  void setChartData() {
    data = LineChartData(
        gridData: FlGridData(
          show: false,
          drawVerticalLine: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Color(0xff37434d),
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 8,
              margin: 2,
              getTextStyles: (value) => TextStyle(
                color: Color(0xff67727d),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 1:
                    return 'M';
                  case 2:
                    return 'T';
                  case 3:
                    return 'W';
                  case 4:
                    return 'TH';
                  case 5:
                    return 'F';
                  case 6:
                    return 'SA';
                  case 7:
                    return 'S';
                  default:
                    return '';
                }
              }
          ),
          leftTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value) => const TextStyle(
              color: Color(0xff67727d),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            reservedSize: 2,
            margin: 2,

          ),
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(color: Color(0xff37434d), width: 1),
        ),
        minX: 0,
        maxX: 7,
        minY: 0,
        maxY: 6,
        lineBarsData: [
          LineChartBarData(
              spots: flspots,
              isCurved: true,
              colors: gradientColors,
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              )),
        ]);

  }

  List<FlSpot> flspots = [
    FlSpot(0, 0),
  ];

  List<Color> gradientColors = [
    const Color(0xff9eabeb),
    const Color(0x3d253aaa),
  ];

  @override
  void initState() {
    super.initState();
    setChartData();
    startCreatingDemoData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: LineChart(data));
  }
}
