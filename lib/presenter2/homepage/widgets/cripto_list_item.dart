// import '../../../portifolioPrimeiroApAGARdepois/controller/cripto_list_provider.dart';
// import '../../../sharedPrimeiraShared/providers/providers.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../detailspage/view/details.dart';
// import '../provider/provider.dart';

// class CriptoListItem extends StatefulHookConsumerWidget {
//   final String coinName;
//   final String coinInitials;
//   final String coinPrice;
//   final String coinValue;
//   final String coinIcon;
//   const CriptoListItem({
//     Key? key,
//     required this.coinName,
//     required this.coinInitials,
//     required this.coinPrice,
//     required this.coinValue,
//     required this.coinIcon,
//   }) : super(key: key);

//   @override
//   ConsumerState<CriptoListItem> createState() => _CriptoListItemState();
// }

// class _CriptoListItemState extends ConsumerState<CriptoListItem> {
//   @override
//   Widget build(BuildContext context) {
//     final walletController = ref.watch(walletControllerProvider);
//     mostrarDetalhes(CoinModel model) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (_) => DetailsPage(model: model),
//         ),
//       );
//     }

//     final statevisibility = ref.watch(visibilityProvider.state);

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage(widget.coinIcon),
//               minRadius: 27,
//               maxRadius: 27,
//             ),
//             const SizedBox(width: 15),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.coinInitials,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   widget.coinName,
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 15,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             statevisibility.state
//                 ? Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text(widget.coinValue),
//                       Row(
//                         children: [
//                           Text(
//                             widget.coinPrice,
//                             style: const TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                           const SizedBox(width: 7),
//                         ],
//                       )
//                     ],
//                   )
//                 : Column(
//                     children: [
//                       Text(
//                         statevisibility.state
//                             ? widget.coinValue
//                             : 'R\$ ********',
//                         style: const TextStyle(
//                           letterSpacing: 1,
//                         ),
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         statevisibility.state ? widget.coinPrice : '*******',
//                         style: const TextStyle(
//                           letterSpacing: 2,
//                         ),
//                       ),
//                     ],
//                   ),
//             Column(
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.arrow_forward_ios),
//                   onPressed: () {
//                     //Navigator.of(context).pushNamed('/details-page');
//                   },
//                   iconSize: 12,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
