part of udemy.fh.desings;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = '/home';
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            Background(),
            _HomeBody(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      );
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              PageTitle(),
              CardTable(),
            ],
          ),
        ),
      );
}
