import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presenter/home_page/widgets/botton_navigation_bar.dart';

void main() {
  runApp(ProviderScope(
      child: MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const BottomNavigation(),
    },
  )));
}
