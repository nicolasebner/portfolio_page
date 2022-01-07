import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<Color> accentColors = [
  Colors.deepOrange,
  Colors.lightGreen,
  Colors.purple,
  Colors.cyan,
  Colors.pink,
  Colors.teal,
  Colors.amber,
  Colors.lightBlue,
];

class MyAccentController extends GetxController {
  static MyAccentController instance = Get.find();

  Rx<Color> myAccent = const Color(0xFF0050FF).obs;
  int counter = 0;

  void increaseColorCounter() {
    if (counter < accentColors.length - 1) {
      counter++;
    } else {
      counter = 0;
    }

    myAccent.value = accentColors[counter];
  }

  Color get myAccentColor {
    return myAccent.value;
  }
}
