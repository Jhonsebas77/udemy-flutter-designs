import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: <String, Widget Function(BuildContext)>{
        'home_screen': (_) => HomeScreen(),
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollScreen(),
      },
    );
  }
}
