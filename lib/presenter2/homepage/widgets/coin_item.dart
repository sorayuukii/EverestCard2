// import 'package:flutter/material.dart';


// import 'widget_coin_item/coin_balance_detail.dart';
// import 'widget_coin_item/coin_image.dart';

// class CoinItem extends StatelessWidget {
//   final CoinModel model;
//   const CoinItem({
//     super.key,
//     required this.model,
//   });
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height * .12,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         border: Border(
//           top: BorderSide(
//             color: Color.fromARGB(255, 227, 228, 235),
//             width: 2,
//           ),
//         ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             horizontal: size.width * .03, vertical: size.height * .02),
//         child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           CoinImage(image: model.iconCoin),
//           CoinBalanceDetail(model: model),
//           Padding(
//             padding: EdgeInsets.only(
//                 top: size.height * .009, left: size.width * .04),
//             child: const Icon(
//               Icons.arrow_forward_ios_sharp,
//               size: 14,
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }