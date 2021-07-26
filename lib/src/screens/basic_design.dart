import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
            'assets/img/landscape.jpeg',
          ),
        ),
      ),
    );
  }
}
