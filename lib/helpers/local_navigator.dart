import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/controllers.dart';
import 'package:portfolio_website/routing/router.dart';
import 'package:portfolio_website/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: homeviewPageRoute,
      onGenerateRoute: generateRoute,
    );

Navigator localSmallNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: smallScreenNotYetPageRoute,
      onGenerateRoute: generateRoute,
    );
