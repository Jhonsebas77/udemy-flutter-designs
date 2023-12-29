part of udemy.fh.desings;

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);
  static const String route = '/scroll';
  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: <double>[
          0.5,
          0.5,
        ],
        colors: <Color>[
          Color(0xff5EE8C5),
          Color(0xff30BAD6),
        ],
      ),
    );
    return Scaffold(
      body: DecoratedBox(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const <Widget>[
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
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          if (ResponsiveWidget.isSmallScreen(context))
            const BackgroundScroll()
          else
            Container(),
          const MainContainer(),
        ],
      );
}

class BackgroundScroll extends StatelessWidget {
  const BackgroundScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image.asset('assets/img/scroll-1.png'),
      );
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 60,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
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
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const ColoredBox(
        color: Color(0xff30BAD6),
        child: Center(
          child: ResponsiveWidget(
            smallScreen: Text('I smallScreen'),
            mediumScreen: Text('I mediumScreen'),
            largeScreen: Text('I largeScreen'),
          ),
        ),
      );
}
