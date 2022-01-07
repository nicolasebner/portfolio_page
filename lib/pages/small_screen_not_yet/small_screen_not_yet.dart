import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/home/widgets/personal_card.dart';
import 'package:get/get.dart';

class SmallScreenNotYet extends StatelessWidget {
  const SmallScreenNotYet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(32),
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
            child: Text(
              "SMALL_SCREEN_NOT_YET".tr,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          width: 300,
          child: PersonalCard(),
        ),
      ],
    );
  }
}
