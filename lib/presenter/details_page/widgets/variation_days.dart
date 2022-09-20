import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/provider.dart';

class VariationDays extends HookConsumerWidget {
  final double variationWithDays;

  const VariationDays({
    Key? key,
    required this.variationWithDays,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final daysCount = ref.watch(daysCountProvider.state);
    final double variationDays = variationWithDays;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Variação 24H',
            style: TextStyle(
              fontSize: 19,
              color: Colors.grey,
            ),
          ),
          Text(
            textAlign: TextAlign.end,
            variationDays.toStringAsFixed(2),
            style: TextStyle(
                fontSize: 19,
                //valor menor que zero muda pra vermelho
                color: (variationDays < 0) ? Colors.red : Colors.black),
          ),
        ],
      ),
    );
  }
}
