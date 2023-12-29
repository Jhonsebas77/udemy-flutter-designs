import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: <String, Widget Function(BuildContext)>{
        'home_screen': (_) => const HomeScreen(),
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollScreen(),
      },
    );
  }
}
