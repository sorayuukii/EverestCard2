import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../home_page/model/coin_model.dart';
import 'button_graph_days.dart';
import 'line_chart_graphic.dart';
import 'price_currency.dart';
import 'quantity_coin.dart';
import 'value_coin.dart';
import 'variation_days.dart';

class DetailsBody extends StatelessWidget {
  final CoinModel model;
  final StateController daysCount;

  const DetailsBody({
    Key? key,
    required this.model,
    required this.daysCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            'Detalhes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.nameCoin,
                              style: const TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              model.coinInitials,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 117, 118, 128),
                              ),
                            ),
                            const Text(
                              'R\$ 10.000,00',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                          width: MediaQuery.of(context).size.width * 0.15,
                          // decoration: BoxDecoration(
                          //   shape: BoxShape.circle,
                          //   //TODO: Lembrar de preencher, lembrei ? =>
                          //   image: DecorationImage(
                          //     fit: BoxFit.fill,
                          //     image: AssetImage(model.iconCoin),
                          //   ),
                          // ),
                          child: ClipOval(
                            child: Image.asset(
                              model.iconCoin,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                  ],
                ),
                LineChartGraphic(model: model),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        daysCount.state = 5;
                      },
                      child: const ButtonGraphDays(
                        days: 5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        daysCount.state = 15;
                      },
                      child: const ButtonGraphDays(
                        days: 15,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        daysCount.state = 30;
                      },
                      child: const ButtonGraphDays(
                        days: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        daysCount.state = 45;
                      },
                      child: const ButtonGraphDays(
                        days: 45,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        daysCount.state = 90;
                      },
                      child: const ButtonGraphDays(
                        days: 90,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    //pega o primeiro valor da lista equivalente ao daysCount
                    CurrentPriceCoin(
                      currentPriceCoin: model.coord[daysCount.state - 1],
                    ),
                    const Divider(
                      height: 10,
                    ),
                    //pega os primeiros valores de cada lista e soma com o valor equivalente ao daysCount - 1
                    VariationDays(
                      variationWithDays: (model.coord.first +
                          model.coord[daysCount.state - 1]),
                    ),
                    const Divider(
                      height: 10,
                    ),
                    //coinquantity normal da lista
                    QuantityCoin(
                      currentPriceCoin: model.coinQuantity,
                      initialsCoin: model.coinInitials,
                    ),
                    const Divider(
                      height: 10,
                    ),
                    //pega o daysCount e multiplica pela quantidade
                    ValueCoin(
                      priceCurrency:
                          model.coord[daysCount.state - 1] * model.coinQuantity,
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                MaterialButton(
                  color: const Color.fromARGB(230, 207, 52, 41),
                  minWidth: MediaQuery.of(context).size.width,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  onPressed: () {
                    //TODO: Pagina de conversao de moedas
                  },
                  child: const Text(
                    'Converter moeda',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
