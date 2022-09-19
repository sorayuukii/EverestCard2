// // import 'dart:math';

// // import 'package:fl_chart/fl_chart.dart';
// // import 'package:flutter/material.dart';
// // import 'package:hooks_riverpod/hooks_riverpod.dart';

// // import '../../shared/providers/providers.dart';
// // import 'widgets/line_tiles.dart';

// // class DetailsPage extends StatefulHookConsumerWidget {
// //   DetailsPage({Key? key}) : super(key: key);
// //   Random random = Random();

// //   @override
// //   ConsumerState<DetailsPage> createState() => _DetailsPageState();
// // }

// // var ramdomNumber1 = Random().nextInt(5);

// // class _DetailsPageState extends ConsumerState<DetailsPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     var routeButtom = ref.watch(routeProvider.state);

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Detalhes'),
// //         backgroundColor: Colors.white,
// //         foregroundColor: Colors.black,
// //         elevation: 1,
// //       ),
// //       body: Column(
// //         children: [
// //           const ListTile(),
// //           Center(
// //             child: SizedBox(
// //               width: MediaQuery.of(context).size.width - 100,
// //               height: MediaQuery.of(context).size.height - 400,
// //               child: GraphicDetailsPage(routeButtom: routeButtom),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class GraphicDetailsPage extends StatelessWidget {
// //   const GraphicDetailsPage({
// //     Key? key,
// //     required this.routeButtom,
// //   }) : super(key: key);

// //   final StateController<bool> routeButtom;

// //   @override
// //   Widget build(BuildContext context) {
// //     return LineChart(
// //       LineChartData(
// //         minX: 0,
// //         maxX: 10,
// //         minY: 0,
// //         maxY: 5,
// //         lineTouchData: LineTouchData(
// //           enabled: false,
// //         ),
// //         titlesData: LineTitles.getTitleData(),
// //         borderData: FlBorderData(show: false),
// //         gridData: FlGridData(
// //           drawVerticalLine: false,
// //           drawHorizontalLine: false,
// //         ),
// //         lineBarsData: [
// //           routeButtom.state
// //               ? LineChartBarData(
// //                   spots: [
// //                     const FlSpot(0, 1),
// //                     const FlSpot(1.3, 3),
// //                     FlSpot(ramdomNumber1.toDouble(), ramdomNumber1.toDouble()),
// //                   ],
// //                   color: const Color.fromARGB(230, 207, 52, 41),
// //                 )
// //               : LineChartBarData(
// //                   spots: [
// //                     const FlSpot(0, 1),
// //                     const FlSpot(1.3, 3),
// //                     const FlSpot(0, 1),
// //                     FlSpot(ramdomNumber1.toDouble(), ramdomNumber1.toDouble()),
// //                   ],
// //                   color: const Color.fromARGB(230, 207, 52, 41),
// //                 )
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:crypto_screen_card_1/presenter/detailspage/widgets/graphic.dart';
// import 'package:crypto_screen_card_1/presenter/detailspage/widgets/header_details.dart';
// import 'package:crypto_screen_card_1/presenter/detailspage/widgets/time_frame.dart';
// import 'package:crypto_screen_card_1/presenter/homepage/view/portifolio.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../portifolioPrimeiroApAGARdepois/controller/cripto_list_provider.dart';
// import 'widgets/button_convert.dart';
// import 'widgets/price_currency.dart';
// import 'widgets/qtd_currency.dart';
// import 'widgets/value_coin.dart';
// import 'widgets/variation_currency.dart';

// class DatailsBody extends StatelessWidget {
//   final CoinModel model;
//   final StateController<int> timeFrame;

//   const DatailsBody({
//     Key? key,
//     required this.model,
//     required this.timeFrame,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: GestureDetector(
//             onTap: () {
//               Navigator.pushReplacementNamed(
//                 context,
//                 PortifolioPage.routeName,
//               );
//             },
//             child: const Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             ),
//           ),
//           backgroundColor: Colors.white,
//           title: const Text(
//             'Detalhes',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               children: [
//                 HeaderDetails(
//                   nameCoin: model.nameCoin,
//                   imgIcon: model.iconCoin,
//                   ticker: model.ticker,
//                   currentPrice: model.currentPrice.toDouble(),
//                 ),
//                 Graphic(model: model),
//                 const TimeFrame(),
//                 Column(
//                   children: [
//                     PriceCurrency(
//                       priceCUrrency: pS(
//                         model.prices[timeFrame.state - 1],
//                       ),
//                     ),
//                     VariationCurrency(
//                       variationCurrency: (-model.prices.first.toDouble() +
//                           model.prices[timeFrame.state - 1].toDouble()),
//                     ),
//                     QtdCoin(
//                       priceCUrrency: model.coinBalance.toDouble(),
//                       initialsCoin: model.ticker,
//                     ),
//                     ValueCoin(
//                         priceCurrency: pS(
//                       model.prices[timeFrame.state - 1] * model.coinBalance,
//                     )),
//                   ],
//                 ),
//                 ButtonConvertCoin(onPressed: () {})
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
