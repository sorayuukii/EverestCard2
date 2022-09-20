import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/coin_model.dart';
import '../../provider/provider.dart';

class CoinPercentage extends HookConsumerWidget {
  final CoinModel coin;
  const CoinPercentage({
    Key? key,
    required this.coin,
  }) : super(key: key);
  //TODO: Editar
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewWalletValue = ref.watch(viewWalletValueProvider.state);

    return Visibility(
      child: viewWalletValue.state
          ? Text(
              '${coin.percent!.toStringAsFixed(2)} ${coin.coinInitials}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            )
          : Text(
              '**** ${coin.coinInitials}',
              style: const TextStyle(
                letterSpacing: 1,
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
    );
  }
}
