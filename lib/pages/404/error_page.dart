import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Sorry you reached a site, which is not available",
        size: 32,
        weigth: FontWeight.bold,
      ),
    );
  }
}
