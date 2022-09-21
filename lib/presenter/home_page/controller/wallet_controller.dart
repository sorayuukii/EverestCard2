import 'package:flutter/material.dart';

import '../model/coin_model.dart';
import '../repository/coin_repository.dart';

class WalletController extends ChangeNotifier {
  CoinRepository coinRepo;
  late List<CoinModel> coins = [];

  WalletController(
    this.coinRepo,
  ) {
    coins = coinRepo.coins();
  }

  //para caso eu use algum dia
  // double getWallet() {
  //   double total = 0.0;
  //   for (CoinModel coin in coins) {
  //     total = 100;
  //   }
  //   return total;
  // }
}
