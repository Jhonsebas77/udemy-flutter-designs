import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
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
              PageTitle(),
            ],
          ),
        ),
      );
}
