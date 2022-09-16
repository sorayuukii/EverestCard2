import 'package:crypto_screen_card_1/presenter/homepage/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presenter/detailspage/details_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const BottomNavigation(),
          '/details-page': (context) => const DetailsPage(),
        },
      ),
    ),
  );
}
