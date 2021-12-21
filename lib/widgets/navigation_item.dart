import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/constants/controllers.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class NavigationItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  const NavigationItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: menuController.isHovering(itemName)
                ? myligthDark.withOpacity(.1)
                : Colors.transparent,

            // TODO Warum Funktioniert der Radius nicht?
            // borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              CustomText(text: itemName),
              Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(height: 3, width: 40, color: myligthDark))
            ],
          ),
        ),
      ),
    );
  }
}
