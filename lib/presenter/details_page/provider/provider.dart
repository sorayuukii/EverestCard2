import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../home_page/model/coin_model.dart';

final daysCountProvider = StateProvider<int>(
  (ref) => 5,
);

var graphAxisProvider = StateProvider((ref) => 1);

final detailsAssetProvider =
    StateNotifierProvider<DetailsAssetNotifier, CoinModel>(
  (ref) => DetailsAssetNotifier(),
);

class DetailsAssetNotifier extends StateNotifier<CoinModel> {
  DetailsAssetNotifier()
      : super(
          CoinModel(
            coinQuantity: 1,
            priceCurrent: 1,
            iconCoin: '',
            nameCoin: '',
            coord: [],
            coinInitials: '',
            coinVariation: 1.2,
          ),
        );
}
