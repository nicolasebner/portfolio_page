import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/constants/controllers.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/routing/routes.dart';
import 'package:portfolio_website/widgets/custom_text.dart';
import 'package:portfolio_website/widgets/leading_icon.dart';
import 'package:portfolio_website/widgets/navigation_item.dart';

import 'language_switcher.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading:
        // !ResponsiveWidget.isSmallScreen(context)?
        const Padding(
      padding: EdgeInsets.only(left: 22.0),
      child: LeadingIcon(),
    ),
    // : IconButton(
    //     onPressed: () {
    //       key.currentState?.openDrawer();
    //     },
    //     icon: Icon(
    //       Icons.menu,
    //       color: myAccent,
    //     ),
    //   ),
    title: Row(
      children: [
        const CustomTextHeading(text: "Nicolas Ebner"),
        Visibility(
            visible: !ResponsiveWidget.isSmallerThanLargeScreen(context),
            child: CustomText(text: " | " + "NAV_DEVELOPER".tr)),
        const Spacer(),
        Visibility(
          visible: !ResponsiveWidget.isSmallScreen(context),
          child: const NavigationBarItems(),
        ),
        const LanguageSwitcher(),
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
