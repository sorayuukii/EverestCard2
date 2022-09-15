import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 15,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 0:
                  return const GraphicIcons(
                    days: '5D',
                    route: '',
                  );
                case 1:
                  return const GraphicIcons(
                    days: '15D',
                    route: '',
                  );
                case 2:
                  return const GraphicIcons(
                    days: '30D',
                    route: '',
                  );
                case 3:
                  return const GraphicIcons(
                    days: '45D',
                    route: '',
                  );
                case 4:
                  return const GraphicIcons(
                    days: '90D',
                    route: '',
                  );
              }
              return const Text('');
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 35,
          ),
        ),
      );
}

class GraphicIcons extends StatelessWidget {
  const GraphicIcons({Key? key, required this.days, required this.route})
      : super(key: key);
  final String days;
  final String route;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      child: MaterialButton(
          onPressed: () {
            route;
          },
          child: Text(days)),
    );
  }
}
