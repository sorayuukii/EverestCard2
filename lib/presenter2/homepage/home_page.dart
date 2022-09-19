// import 'package:crypto_screen_card_1/presenter/homepage/widgets/cripto_list_item.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../sharedPrimeiraShared/providers/providers.dart';

// class HomePage extends StatefulHookConsumerWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   ConsumerState<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends ConsumerState<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var visible = ref.watch(visibilityProvider.state);
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 50),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Cripto',
//                   style: TextStyle(
//                     fontSize: 35,
//                     color: Color.fromARGB(230, 207, 52, 41),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () => setState(() {
//                     visible.state = !visible.state;
//                   }),
//                   icon: Icon(
//                     visible.state ? Icons.visibility : Icons.visibility_off,
//                     color: Colors.black,
//                     size: 25,
//                   ),
//                 ),
//               ],
//             ),
//             visible.state
//                 ? const Text(
//                     'R\$ 14.798,00',
//                     style: TextStyle(
//                       fontSize: 27,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 : const Text(
//                     'R\$ * * * * * * * *',
//                     style: TextStyle(
//                       fontSize: 27,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//             const Text(
//               'Valor total de moedas',
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.grey,
//               ),
//             ),
//             const SizedBox(height: 70),
//             const Divider(
//               height: 3,
//               color: Colors.grey,
//             ),
//             const CriptoListItem(
//               coinName: 'Bitcoin',
//               coinInitials: 'BTC',
//               coinPrice: '0.65 BTC',
//               coinValue: 'R\$ 6.557,00',
//               coinIcon: 'assets/images/bitcoin.PNG',
//             ),
//             const SizedBox(height: 15),
//             const Divider(
//               height: 3,
//               color: Colors.grey,
//             ),
//             const CriptoListItem(
//               coinName: 'Ethererum',
//               coinInitials: 'ETH',
//               coinPrice: '0.94 ETH',
//               coinValue: 'R\$ 7.996,00',
//               coinIcon: 'assets/images/ethereum.PNG',
//             ),
//             const SizedBox(height: 15),
//             const Divider(
//               height: 3,
//               color: Colors.grey,
//             ),
//             const CriptoListItem(
//               coinName: 'Litecoin',
//               coinInitials: 'LTC',
//               coinPrice: '0.82 LTC',
//               coinValue: 'R\$ 245,00',
//               coinIcon: 'assets/images/litecoin.PNG',
//             ),
//             const SizedBox(height: 15),
//             const Divider(
//               height: 3,
//               color: Colors.grey,
//             ),
//             const SizedBox(height: 17),
//           ],
//         ),
//       ),
//     );
//   }
// }
