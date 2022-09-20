import 'package:flutter/material.dart';

import '../widgets/home_page_body.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({Key? key}) : super(key: key);

  static const routeName = '/crypto-page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageBody(),
    );
  }
}
