import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../shared/providers/providers.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 15,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 0:
                  return const GraphicIcons(
                    days: '5D',
                  );
                case 1:
                  return const GraphicIcons(
                    days: '15D',
                  );
                case 2:
                  return const GraphicIcons(
                    days: '30D',
                  );
                case 3:
                  return const GraphicIcons(
                    days: '45D',
                  );
                case 4:
                  return const GraphicIcons(
                    days: '90D',
                  );
              }

              return const Text('');
            },
          ),
        ),
      );
}

class GraphicIcons extends StatefulHookConsumerWidget {
  const GraphicIcons({
    Key? key,
    required this.days,
  }) : super(key: key);
  final String days;
  //final Function buttomMaterial;

  @override
  ConsumerState<GraphicIcons> createState() => _GraphicIconsState();
}

class _GraphicIconsState extends ConsumerState<GraphicIcons> {
  @override
  Widget build(BuildContext context) {
    var routeButtom = ref.watch(routeProvider.state);

    return SizedBox(
      width: 45,
      child: MaterialButton(
        onPressed: () => setState(() {
          routeButtom.state = !routeButtom.state;
        }),
        child: Text(
          widget.days,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
