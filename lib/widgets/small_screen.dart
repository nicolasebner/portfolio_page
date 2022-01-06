import 'package:flutter/material.dart';
import 'package:portfolio_website/helpers/local_navigator.dart';
import 'package:portfolio_website/pages/small_screen_not_yet/small_screen_not_yet.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return localSmallNavigator();

    return SmallScreenNotYet();
  }
}
