import 'package:crypto_screen_card_1/presenter/home_page/widgets/coin_widgets/coin_icon.dart';
import 'package:crypto_screen_card_1/presenter/home_page/widgets/coin_widgets/coin_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/coin_model.dart';
import '../provider/provider.dart';

class CoinsList extends HookConsumerWidget {
  final CoinModel model;
  const CoinsList({
    super.key,
    required this.model,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletController = ref.watch(walletControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CoinIcon(coinIcon: model.iconCoin),
          CoinNames(model: model),
          const SizedBox(width: 10),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 15,
          ),
        ],
      ),
    );
  }
}
