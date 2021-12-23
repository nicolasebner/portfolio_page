import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/controllers.dart';
import 'package:portfolio_website/routing/routes.dart';

class ScrollNotificationListener extends StatelessWidget {
  final Widget child;
  final int position;

  const ScrollNotificationListener(
      {Key? key, required this.child, required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    menuController.activeItem;

    return NotificationListener<ScrollEndNotification>(
        onNotification: (scrollEnd) {
          var metrics = scrollEnd.metrics;
          if (metrics.atEdge) {
            if (metrics.pixels == 0) {
              menuController
                  .changeActiveItemTo(topNavMenuItems[position - 1].name);
              navigationController
                  .navigateTo(topNavMenuItems[position - 1].route);
            } else {
              menuController
                  .changeActiveItemTo(topNavMenuItems[position + 1].name);
              navigationController
                  .navigateTo(topNavMenuItems[position + 1].route);
            }
          }
          return true;
        },
        child: child);
  }
}
