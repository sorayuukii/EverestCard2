import 'package:crypto_screen_card_1/presenter/home_page/widgets/coin_widgets/coin_initials.dart';
import 'package:flutter/material.dart';
import '../../model/coin_model.dart';

import 'coin_price_current.dart';

class CoinNames extends StatelessWidget {
  const CoinNames({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CoinModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.coinInitials,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CoinBalance(model: model),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.nameCoin,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              CoinPercentage(coin: model),
            ],
          ),
        ],
      ),
    );
  }
}
