import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class TextDivider extends StatelessWidget {
  final String number;
  final String text;

  const TextDivider({
    Key? key,
    required this.number,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 50, top: 100),
      child: Row(
        children: [
          CustomText(
            text: number,
            color: myAccent,
            size: 22,
          ),
          const SizedBox(
            width: 12,
          ),
          CustomText(
            text: text,
            size: 30,
            weigth: FontWeight.bold,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16),
            height: 1,
            width: 280,
            color: myAccent,
          ),
        ],
      ),
    );
  }
}
