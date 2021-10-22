library udemy.fh.desings;

import 'package:flutter/material.dart';

import '../utils/responsive_util.dart';
import '../widgets/widgets.dart';

part './basic_design.dart';
part './home_screen.dart';
part './scroll_desing.dart';

Map<String, Widget> routes = <String, Widget>{
  BasicDesignScreen.route: const BasicDesignScreen(),
  HomeScreen.route: const HomeScreen(),
  ScrollScreen.route: const ScrollScreen(),
};
