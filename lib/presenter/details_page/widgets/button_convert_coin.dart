import 'package:flutter/material.dart';

class ButtonConvertCoin extends StatelessWidget {
  final Function()? onPressed;

  const ButtonConvertCoin({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialButton(
      color: const Color.fromARGB(230, 207, 52, 41),
      minWidth: size.width,
      height: 60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: onPressed,
      child: const Text(
        'Converter moeda',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
