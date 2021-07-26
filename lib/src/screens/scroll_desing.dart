import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackgroundScroll(), MainContainer()],
      ),
    );
  }
}

class BackgroundScroll extends StatelessWidget {
  const BackgroundScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image.asset('assets/img/scroll-1.png'),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Hola Mundo'),
        Text('Hola Mundscxdfvsdgsdfo'),
        Text('Hola Mundo'),
        Text('Hola Mundo'),
        Text('Hola Mundo'),
      ],
    );
  }
}
