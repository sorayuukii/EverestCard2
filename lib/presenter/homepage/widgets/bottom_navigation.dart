import 'package:crypto_screen_card_1/core/assets_images.dart';
import 'package:flutter/material.dart';

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({
    Key? key,
  }) : super(key: key);

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color.fromARGB(230, 207, 52, 41),
      unselectedItemColor: Colors.grey,
      iconSize: 35,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: warrenImg,
          label: 'Portifolio',
        ),
        BottomNavigationBarItem(
          icon: movimentaImg,
          label: 'Movimentações',
        ),
      ],
    );
  }
}
