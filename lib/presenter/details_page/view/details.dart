import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../home_page/model/coin_model.dart';
import '../provider/provider.dart';
import '../widgets/details_body.dart';

class DetailsPage extends HookConsumerWidget {
  final CoinModel model;

  const DetailsPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  static const routeName = '/details-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final daysCount = ref.watch(daysCountProvider.state);
    return DatailsBody(model: model, daysCount: daysCount);
  }
}
