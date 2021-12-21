import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weigth;

  const CustomText({
    Key? key,
    required this.text,
    this.size = 16,
    this.color = Colors.black,
    this.weigth = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weigth,
      ),
    );
  }
}

class CustomTextHeading extends StatelessWidget {
  final String text;

  const CustomTextHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      size: 22,
      weigth: FontWeight.bold,
    );
  }
}
