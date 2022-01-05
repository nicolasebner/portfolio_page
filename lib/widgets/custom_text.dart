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

  List<TextSpan> splitText() {
    var textParts = text.split("*");
    if (textParts.length == 1) {
      return [TextSpan(text: text)];
    }
    List<TextSpan> result = [];
    for (var i = 0; i < textParts.length; i++) {
      if (i % 2 == 0) {
        result.add(TextSpan(text: textParts[i]));
      } else {
        result.add(
          TextSpan(
            text: textParts[i],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // return Text(
    //   text,
    //   style: TextStyle(
    //     fontSize: size,
    //     color: color,
    //     fontWeight: weigth,
    //   ),
    // );

    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: size,
              color: color,
              fontWeight: weigth,
            ),
        children: splitText(),
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
