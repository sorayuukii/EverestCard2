import 'coord_graphic.dart';

import '../model/coin_model.dart';

class CoinRepository {
  List<CoinModel> coins() {
    List<CoinModel> coins = [
      CoinModel(
        nameCoin: 'Bitcoin',
        coinInitials: 'BTC',
        iconCoin: 'assets/images/bitcoin.PNG',
        coinVariation: 8.00,
        priceCurrent: (1031.21),
        coinQuantity: (0.51),
        coord: coord,
      ),
      CoinModel(
        nameCoin: 'Ethereum',
        coinInitials: 'ETH',
        iconCoin: 'assets/images/ethereum.PNG',
        coinVariation: -222.25,
        priceCurrent: (799.96),
        coinQuantity: (0.51),
        coord: coord,
      ),
      CoinModel(
        nameCoin: 'Litecoin',
        coinInitials: 'LTC',
        iconCoin: 'assets/images/litecoin.PNG',
        coinVariation: 82.9,
        priceCurrent: (245.01),
        coinQuantity: (0.51),
        coord: coord,
      ),
      CoinModel(
        nameCoin: 'Kupocoin',
        coinInitials: 'KPC',
        iconCoin: 'assets/images/kupo.png',
        coinVariation: 12.3,
        priceCurrent: (34.01),
        coinQuantity: (2.22),
        coord: coord,
      ),
    ];
    return coins;
  }
}
