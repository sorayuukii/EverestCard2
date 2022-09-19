import 'package:flutter/material.dart';

import '../../../portifolioPrimeiroApAGARdepois/controller/cripto_list_provider.dart';
import '../repository/coins_repository.dart';

class WalletController extends ChangeNotifier {
  CoinRepository coinRepo;
  late List<CoinModel> coins = [];

  WalletController(
    this.coinRepo,
  ) {
    coins = coinRepo.getCoins();
  }

  double getWallet() {
    double total = 0.0;
    for (CoinModel coin in coins) {
      total += coin.currentPrice.toDouble();
    }
    return total;
  }

  static Color getContainerValueColor(bool visible) =>
      visible ? Colors.white : const Color.fromARGB(255, 161, 161, 161);

  static IconData getVisibilityIconData(bool visible) =>
      visible ? Icons.visibility : Icons.visibility_off;

  static String getFormatedPercentage(double percentage, String ticker) {
    return "${percentage.toStringAsFixed(2)} $ticker";
  }
}
