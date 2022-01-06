import 'package:flutter/material.dart';

const int largeScreenSize = 960;
const int mediumScreenSize = 800;
// const int smallScreenSize = 540;
// ich hatte es bis 700px optimiert
const int smallScreenSize = 700;
// const int customScreenSize = 700;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  // final Widget mediumScreen;
  // final Widget customScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.smallScreen,
    // this.mediumScreen,
    // this.customScreen,
  }) : super(key: key);

  //kann dann weg
  // static bool isSmallerThanCustom(BuildContext context) =>
  //     MediaQuery.of(context).size.width <= customScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= smallScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > smallScreenSize &&
      MediaQuery.of(context).size.width <= mediumScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > mediumScreenSize;

  static bool isSmallerThanLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;

        return _width <= smallScreenSize ? smallScreen : largeScreen;
      },
    );
  }
}
