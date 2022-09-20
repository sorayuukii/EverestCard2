import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/coin_model.dart';
import '../../provider/provider.dart';

class CoinBalance extends HookConsumerWidget {
  const CoinBalance({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CoinModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final viewWalletValue = ref.watch(viewWalletValueProvider.state);

    return Visibility(
      child: viewWalletValue.state
          ? Text(
              'R\$ ${model.priceCurrent.toDouble().toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            )
          : const Text(
              'R\$ ********',
              style: TextStyle(
                letterSpacing: 1,
              ),
            ),
    );
  }
}
