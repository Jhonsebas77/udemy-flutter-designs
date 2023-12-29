import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Table(
        children: const <TableRow>[
          TableRow(
            children: <Widget>[
              _SingleCard(
                color: Colors.red,
                icon: Icons.tap_and_play,
                text: 'Jugar',
              ),
              _SingleCard(
                color: Colors.green,
                icon: Icons.group_add,
                text: 'Añadir amigos',
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              _SingleCard(
                color: Colors.purple,
                icon: Icons.bedtime_outlined,
                text: 'Contador de sueños',
              ),
              _SingleCard(
                color: Colors.yellow,
                icon: Icons.favorite,
                text: 'Favoritos',
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              _SingleCard(
                color: Colors.orange,
                icon: Icons.cake_sharp,
                text: 'Cumpleaños',
              ),
              _SingleCard(
                color: Colors.teal,
                icon: Icons.gite_rounded,
                text: 'Home',
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              _SingleCard(
                color: Colors.cyan,
                icon: Icons.account_circle_rounded,
                text: 'Usuario',
              ),
              _SingleCard(
                color: Colors.teal,
                icon: Icons.settings,
                text: 'Configuraciones',
              ),
            ],
          ),
        ],
      );
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) => _CardBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundColor: color,
              child: Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(color: color),
            ),
          ],
        ),
      );
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: SizedBox(
              height: 180,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: child,
              ),
            ),
          ),
        ),
      );
}
