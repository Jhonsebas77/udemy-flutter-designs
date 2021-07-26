import 'package:flutter/material.dart';
import 'package:flutter_designs/src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'basic_design',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
      },
    );
  }
}
