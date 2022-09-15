import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'widgets/line_tiles.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

  List rotas = const [
    FlSpot(0, 2),
    FlSpot(3, 4),
    FlSpot(5.3, 2.6),
    FlSpot(3, 2),
  ];
  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: MediaQuery.of(context).size.height - 400,
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 10,
              minY: 0,
              maxY: 5,
              titlesData: LineTitles.getTitleData(),
              borderData: FlBorderData(show: false),
              gridData: FlGridData(
                show: false,
                drawVerticalLine: false,
                drawHorizontalLine: false,
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 1),
                    FlSpot(2, 4),
                    FlSpot(4.3, 4.6),
                    FlSpot(5, 2),
                  ],
                  color: const Color.fromARGB(230, 207, 52, 41),
                ),
              ],
            ),
          ),
        ),
      );
}
