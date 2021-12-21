import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/constants/controllers.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/routing/routes.dart';
import 'package:portfolio_website/widgets/custom_text.dart';
import 'package:portfolio_website/widgets/navigation_item.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Icon(
              Icons.accessibility_new_rounded,
              color: myAccent,
            ),
          )
        : IconButton(
            onPressed: () {
              key.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: myAccent,
            ),
          ),
    title: Row(
      children: [
        const CustomTextHeading(text: "Nicolas Ebner"),
        Visibility(
            visible: !ResponsiveWidget.isSmallerThanLargeScreen(context),
            child: const CustomText(text: " | Junior Softwareentwickler")),
        const Spacer(),
        Visibility(
          visible: !ResponsiveWidget.isSmallScreen(context),
          child: const NavigationBarItems(),
        ),
      ],
    ),
    elevation: 0,
    backgroundColor: Colors.white,
  );
}

class NavigationBarItems extends StatelessWidget {
  const NavigationBarItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: topNavMenuItems
          .map(
            (item) => NavigationItem(
              itemName: item.name,
              onTap: () {
                if (!menuController.isActive(item.name)) {
                  menuController.changeActiveItemTo(item.name);

                  if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                  navigationController.navigateTo(item.route);
                }
              },
            ),
          )
          .toList(),
    );
  }
}
