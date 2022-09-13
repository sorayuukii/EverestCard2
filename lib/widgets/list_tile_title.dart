import 'package:flutter/material.dart';

class titleListTile extends StatelessWidget {
  const titleListTile({
    Key? key,
    required this.coinInitials,
    required this.coinPrice,
  }) : super(key: key);

  final Widget coinInitials;
  final Widget coinPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        coinInitials,
        coinPrice,
      ],
    );
  }
}
