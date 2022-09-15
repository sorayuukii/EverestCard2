import 'package:crypto_screen_card_1/presenter/homepage/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigation(),
      ),
    ),
  );
}
