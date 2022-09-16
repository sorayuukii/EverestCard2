import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/providers/providers.dart';
import 'widgets/line_tiles.dart';

class DetailsPage extends StatefulHookConsumerWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends ConsumerState<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var routeButtom = ref.watch(routeProvider.state);

    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 100,
        height: MediaQuery.of(context).size.height - 400,
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 10,
            minY: 0,
            maxY: 5,
            lineTouchData: LineTouchData(
              enabled: false,
            ),
            titlesData: LineTitles.getTitleData(),
            borderData: FlBorderData(show: false),
            gridData: FlGridData(
              drawVerticalLine: false,
              drawHorizontalLine: false,
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 1),
                  const FlSpot(1.3, 3),
                  const FlSpot(0, 1),
                  const FlSpot(2, 4),
                  const FlSpot(4.3, 4.6),
                  const FlSpot(5, 2),
                ],
                color: const Color.fromARGB(230, 207, 52, 41),
              )
            ],
          ),
        ),
      ),
    );
  }
}
