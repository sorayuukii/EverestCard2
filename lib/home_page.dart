import 'package:flutter/material.dart';

import 'widgets/bottom_navigation.dart';
import 'widgets/list_tile_subtitle.dart';
import 'widgets/list_tile_title.dart';
import 'widgets/list_tile_wallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Cripto',
                  style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(230, 207, 52, 41),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () => setState(() {
                    visible = !visible;
                  }),
                  icon: Icon(
                    visible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
            visible
                ? const Text(
                    'R\$ 14.798,00',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            const Text(
              'Valor total de moedas',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 35),
            const Divider(
              height: 3,
              color: Colors.grey,
            ),
            listTileWallet(
              title: titleListTile(
                coinInitials: Text('BTC'),
                coinPrice: visible
                    ? Text('R\$ 6.557,00')
                    : Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
              ),
              subtitle: subtitleListTile(
                coinName: Text('Bitcoin'),
                coinValue: visible
                    ? Text('0.65 BTC')
                    : Container(
                        height: 15,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
              ),
              leading: Image.asset('assets/images/bitcoin.PNG'),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17,
              ),
            ),
            const SizedBox(height: 17),
            const Divider(
              height: 3,
              color: Colors.grey,
            ),
            listTileWallet(
              title: titleListTile(
                coinInitials: Text('ETH'),
                coinPrice: visible
                    ? Text('R\$ 7.996,00')
                    : Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
              ),
              subtitle: subtitleListTile(
                coinName: Text('Ethereum'),
                coinValue: visible
                    ? Text('0.94 ETH')
                    : Container(
                        height: 15,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
              ),
              leading: Image.asset('assets/images/ethereum.PNG'),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17,
              ),
            ),
            const SizedBox(height: 17),
            const Divider(
              height: 3,
              color: Colors.grey,
            ),
            listTileWallet(
              title: titleListTile(
                coinInitials: Text('LTC'),
                coinPrice: visible
                    ? Text('R\$ 245,00')
                    : Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
              ),
              subtitle: subtitleListTile(
                coinName: Text('Litecoin'),
                coinValue: visible
                    ? Text('0.82 BTC')
                    : Container(
                        height: 15,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
              ),
              leading: Image.asset('assets/images/litecoin.PNG'),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17,
              ),
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
      bottomNavigationBar: const bottom_navigation(),
    );
  }
}
