import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/provider.dart';
import '../controller/wallet_controller.dart';

class WalletBalance extends HookConsumerWidget {
  const WalletBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;

    //providers
    final viewWalletValue = ref.watch(viewWalletValueProvider.state);
    final walletController = ref.watch(walletControllerProvider);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: WalletController.getContainerValueColor(viewWalletValue.state),
      ),
      width: size.width * 0.55,
      height: size.height * .050,
    );
  }
}
