import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/contact/contact.dart';
import 'package:portfolio_website/pages/home/home.dart';
import 'package:portfolio_website/pages/projects/projects.dart';
import 'package:portfolio_website/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeviewPageRoute:
      return _getPageRoute(const HomeViewPage());
    case projectviewPageRoute:
      return _getPageRoute(const ProjectViewPage());
    case contactviewPageRoute:
      return _getPageRoute(const ContactViewPage());
    default:
      return _getPageRoute(const HomeViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
