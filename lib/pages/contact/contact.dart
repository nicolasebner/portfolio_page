import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class ContactViewPage extends StatelessWidget {
  const ContactViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "Contact"),
    );
  }
}
