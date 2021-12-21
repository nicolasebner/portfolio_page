import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/routing/routes.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class MenuController extends GetxController {
  static MenuController instace = Get.find();

  var activeItem = homeviewPageDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  // Widget _customTextSize() {
  //   return CustomText(text: "DAS MUSS NOCH REFACTORT WERDEN");
  // }
}
