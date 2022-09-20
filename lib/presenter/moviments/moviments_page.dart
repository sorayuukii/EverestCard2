import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home_page/provider/provider.dart';
import '../home_page/view/crypto_page.dart';

class MovimentsPage extends HookConsumerWidget {
  const MovimentsPage({Key? key}) : super(key: key);

  static const routeName = '/moviments-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider.state);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              pageIndex.state = 1;
              Navigator.pushNamed(context, CryptoPage.routeName);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.black),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Movimentações',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: const Center(
          child: Text(
            'Pagina de movimentações',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
