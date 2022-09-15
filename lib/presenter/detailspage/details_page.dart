import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            show: false,
          ),
          minX: 0,
          maxX: 3,
          minY: 0,
          maxY: 3,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            drawHorizontalLine: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 1),
                FlSpot(1, 2),
                FlSpot(2, 2.2),
                FlSpot(2.2, 2.5),
                FlSpot(2.5, 2.6),
                FlSpot(2.6, 2.7),
                FlSpot(2.7, 2.8),
                FlSpot(2.8, 2.9),
                FlSpot(2.9, 3.0),
              ],
            ),
          ],
        ),
      );
}
