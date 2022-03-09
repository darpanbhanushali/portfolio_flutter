import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int smallScreenSize = 750;

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const Responsive(
      {Key? key, required this.largeScreen, required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenSize;

//   static bool isLargeScreen(BuildContext context) =>
//       MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width > smallScreenSize) {
        return largeScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
