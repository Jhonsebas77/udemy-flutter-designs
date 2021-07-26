import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.5,
          0.5,
        ],
        colors: [
          Color(0xff5EE8C5),
          Color(0xff30BAD6),
        ],
      ),
    );
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundScroll(),
        MainContainer(),
      ],
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
    final textStyle = TextStyle(
      fontSize: 60,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            '11 º',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Bienvenido',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFF308CC9),
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
