import 'package:flutter/material.dart';

class MovimentsPage extends StatelessWidget {
  const MovimentsPage({Key? key}) : super(key: key);
  static const routeName = '/moviments-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Moviment Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Container(
        child: const Text('aaa'),
      ),
    );
  }
}
