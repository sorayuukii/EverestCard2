import 'package:flutter/material.dart';

import '../widgets/body_portifolio.dart';

class PortifolioPage extends StatelessWidget {
  const PortifolioPage({Key? key}) : super(key: key);

  static const routeName = '/portifolio-page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyPortifolioPage(),
    );
  }
}