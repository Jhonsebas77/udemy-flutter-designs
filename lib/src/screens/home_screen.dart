import 'package:flutter/material.dart';
import 'package:flutter_designs/src/widgets/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
        ],
      ),
    );
  }
}
