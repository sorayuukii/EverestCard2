import 'package:flutter/material.dart';

import '../../../../portifolioPrimeiroApAGARdepois/controller/cripto_list_provider.dart';
import 'coin_balance.dart';
import 'coin_percentage.dart';

class CoinBalanceDetail extends StatelessWidget {
  const CoinBalanceDetail({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CoinModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(model.ticker, style: const TextStyle(fontSize: 21)),
              CoinBalance(model: model),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.nameCoin,
                style: const TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 117, 118, 128)),
              ),
              CoinPercentage(coin: model),
            ],
          ),
        ],
      ),
    );
  }
}
