import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/helpers/internet_service.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () =>
                openWeb("https://www.linkedin.com/in/nicolas-ebner/"),
            icon: const FaIcon(FontAwesomeIcons.linkedinIn)),
        IconButton(
            onPressed: () =>
                openWeb("https://www.xing.com/profile/Nicolas_Ebner4/cv"),
            icon: const FaIcon(FontAwesomeIcons.xing)),
        IconButton(
            onPressed: () =>
                openWeb("https://www.instagram.com/nicolas_ebner/"),
            icon: const FaIcon(FontAwesomeIcons.instagram)),
        IconButton(
            onPressed: () =>
                openWeb("https://www.facebook.com/nicolas.ebner.9/"),
            icon: const FaIcon(FontAwesomeIcons.facebook)),
      ],
    );
  }
}
