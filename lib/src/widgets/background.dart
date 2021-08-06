import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: <double>[
          0.2,
          0.8,
        ],
        colors: <Color>[
          Color(0xff2E305F),
          Color(0xff202333),
        ],
      ),
    );
    return Stack(
      children: <Widget>[
        Container(
          decoration: boxDecoration,
        ),
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Transform.rotate(
        angle: -pi / 5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1),
              ],
            ),
          ),
        ),
      );
}
