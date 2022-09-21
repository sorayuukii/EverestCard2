import 'package:flutter/material.dart';

class CoinIcon extends StatelessWidget {
  const CoinIcon({
    Key? key,
    required this.coinIcon,
  }) : super(key: key);

  final String coinIcon;
  //TODO: arrumado, mas melhor dar mais uma olhada depois
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(coinIcon))),
      ),
    );
  }
}
