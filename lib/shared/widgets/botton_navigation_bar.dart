import 'package:crypto_screen_card_1/presenter2/movimentspage/moviments_page.dart';
import 'package:flutter/material.dart';

import '../../core/assets_icons_images.dart';
import '../../presenter/portifolio/view/portifolio.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);
  static const routeName = '/bottomnav-page';
  @override
  State<BottomNavigation> createState() => _BottomNavigState();
}

class _BottomNavigState extends State<BottomNavigation> {
  late int _currentIndex = 0;
  List pages = [
    const PortifolioPage(),
    const MovimentsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(230, 207, 52, 41),
        unselectedItemColor: Colors.grey,
        iconSize: 35,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: warrenImg,
            label: 'Portifolio',
          ),
          BottomNavigationBarItem(
            icon: movimentaImg,
            label: 'Movimentações',
          ),
        ],
      ),
    );
  }
}