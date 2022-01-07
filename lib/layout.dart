import 'package:flutter/material.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/widgets/large_screen.dart';
import 'package:portfolio_website/widgets/small_screen.dart';
import 'package:portfolio_website/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      // drawer: Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
