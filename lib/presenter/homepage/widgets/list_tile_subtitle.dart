import 'package:flutter/material.dart';

class subtitleListTile extends StatelessWidget {
  const subtitleListTile({
    Key? key,
    required this.coinName,
    required this.coinValue,
  }) : super(key: key);

  final Widget coinName;
  final Widget coinValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        coinName,
        coinValue,
      ],
    );
  }
}
