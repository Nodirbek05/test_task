import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:testproject/presentation/widgets/individual_bar.dart';

class MyBarChart extends StatefulWidget {
  MyBarChart({super.key, required this.hourltSummary});
  final List hourltSummary;

  @override
  State<MyBarChart> createState() => _MyBarChartState();
}

class _MyBarChartState extends State<MyBarChart> {
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;

  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    BarData barChart = BarData(
      firtsHourData: widget.hourltSummary[0],
      secondHourData: widget.hourltSummary[1],
      thirdHourData: widget.hourltSummary[2],
      fourthHourData: widget.hourltSummary[3],
      fifthHourData: widget.hourltSummary[4],
      sixthHourData: widget.hourltSummary[5],
      seventhHourData: widget.hourltSummary[6],
      eighthHourData: widget.hourltSummary[7],
      ninethHourData: widget.hourltSummary[8],
      tenthHourData: widget.hourltSummary[9],
    );

    barChart.initilizeBarData();
    return BarChart(
      BarChartData(
        maxY: 20,
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: ((group) {
              return Colors.grey;
            }),
            getTooltipItem: (a, b, c, d) => null,
          ),
          touchCallback: (FlTouchEvent event, response) {
            if (response == null || response.spot == null) {
              setState(() {
                touchedGroupIndex = -1;
                showingBarGroups = List.of(rawBarGroups);
              });
              return;
            }
    
            touchedGroupIndex = response.spot!.touchedBarGroupIndex;
    
            setState(() {
              if (!event.isInterestedForInteractions) {
                touchedGroupIndex = -1;
                showingBarGroups = List.of(rawBarGroups);
                return;
              }
              showingBarGroups = List.of(rawBarGroups);
              if (touchedGroupIndex != -1) {
                var sum = 0.0;
                for (final rod
                    in showingBarGroups[touchedGroupIndex].barRods) {
                  sum += rod.toY;
                }
                final avg =
                    sum / showingBarGroups[touchedGroupIndex].barRods.length;
    
                showingBarGroups[touchedGroupIndex] =
                    showingBarGroups[touchedGroupIndex].copyWith(
                  barRods:
                      showingBarGroups[touchedGroupIndex].barRods.map((rod) {
                    return rod.copyWith(toY: avg, color: Colors.amber);
                  }).toList(),
                );
              }
            });
          },
        ),
        titlesData:const FlTitlesData(
          show: true,
          rightTitles:  AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles:  AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: bottomTitles,
              reservedSize: 42,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 28,
              interval: 1,
              getTitlesWidget: leftTitles,
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false,
        ),
        barGroups: showingBarGroups,
        gridData: const FlGridData(show: false),
      ),
    );
  }
}

Widget leftTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff7589a2),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text;
  if (value == 0) {
    text = '1K';
  } else if (value == 10) {
    text = '5K';
  } else if (value == 19) {
    text = '10K';
  } else {
    return Container();
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 0,
    child: Text(text, style: style),
  );
}

Widget bottomTitles(double value, TitleMeta meta) {
  final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su'];

  final Widget text = Text(
    titles[value.toInt()],
    style: const TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  );

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 16, //margin top
    child: text,
  );
}

BarChartGroupData makeGroupData(int x, double y1, double y2) {
  return BarChartGroupData(
    barsSpace: 4,
    x: x,
    barRods: [
      BarChartRodData(
        toY: y1,
        color: Colors.red,
        width: 5,
      ),
      BarChartRodData(
        toY: y2,
        color: Colors.greenAccent,
        width: 5,
      ),
    ],
  );
}
