import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen ?? Container();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          //if medium screen not available, then return large screen
          return mediumScreen ?? largeScreen ?? Container();
        } else {
          //if small screen implementation not available, then return large screen
          return smallScreen ?? largeScreen ?? Container();
        }
      });

  //Making these methods static, so that they can be used as accessed from other widgets

  //Large screen is any screen whose width is more than 1200 pixels
  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;

  //Small screen is any screen whose width is less than 800 pixels
  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  //Medium screen is any screen whose width is less than 1200 pixels,
  //and more than 800 pixels
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 800 &&
      MediaQuery.of(context).size.width < 1200;
}
