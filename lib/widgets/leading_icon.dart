import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/constants/controllers.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        myAccentController.increaseColorCounter();
      },
      child: Tooltip(
        height: 40,
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        message: "Hi :)",
        child: Center(
          child: Obx(
            () => FaIcon(
              FontAwesomeIcons.smileBeam,
              color: myAccentController.myAccent.value,
            ),
          ),
        ),
      ),
    );
  }
}
