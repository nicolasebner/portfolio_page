import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/controllers.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/routing/routes.dart';
import 'package:portfolio_website/widgets/custom_text.dart';
import 'package:get/get.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveWidget.isSmallerThanLargeScreen(context) ? 250 : 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: 'HOME_HELLO'.tr, weigth: FontWeight.bold, size: 66),
          CustomText(text: "HOME_HELLO_CAPTION".tr, size: 22),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 22),
                child: Obx(
                  () => ElevatedButton(
                    onPressed: () {
                      menuController
                          .changeActiveItemTo(projectviewPageDisplayName);
                      navigationController.navigateTo(projectviewPageRoute);
                    },
                    child: Text("NAV_PROJECTS".tr.toUpperCase()),
                    style: ElevatedButton.styleFrom(
                      primary: myAccentController.myAccentColor,
                    ),
                  ),
                ),
              ),
              Obx(
                () => OutlinedButton(
                  onPressed: () {
                    menuController
                        .changeActiveItemTo(contactviewPageDisplayName);
                    navigationController.navigateTo(contactviewPageRoute);
                  },
                  child: Text("NAV_CONTACT".tr.toUpperCase()),
                  style: OutlinedButton.styleFrom(
                    primary: myAccentController.myAccentColor,
                  ),
                ),
              )
            ],
          ),
          CustomText(text: "HOME_DESCRIPTION".tr)
        ],
      ),
    );
  }
}
