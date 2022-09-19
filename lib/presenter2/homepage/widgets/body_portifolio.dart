// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../detailspage/view/details.dart';
// import '../../models/crypto_model.dart';
// import '../provider/provider.dart';
// import 'coin_item.dart';
// import 'wallet_header.dart';

// class BodyPortifolioPage extends HookConsumerWidget {
//   const BodyPortifolioPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final walletController = ref.watch(walletControllerProvider);
//     mostrarDetalhes(CoinModel model) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (_) => DetailsPage(model: model),
//         ),
//       );
//     }

//     return SafeArea(
//       child: Column(
//         children: [
//           const WalletHeader(),
//           Expanded(
//             child: ListView.builder(
//               itemCount: walletController.coins.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () => mostrarDetalhes(walletController.coins[index]),
//                   child: CoinItem(
//                     model: walletController.coins[index],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
