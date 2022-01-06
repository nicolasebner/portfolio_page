import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/style.dart';

class LeadingIcon extends StatefulWidget {
  const LeadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  State<LeadingIcon> createState() => _LeadingIconState();
}

class _LeadingIconState extends State<LeadingIcon> {
  Color color = myAccent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          color = color == myAccent ? Colors.green : myAccent;
        });
      },
      child: Tooltip(
        height: 40,
        textStyle: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        message: "Hi :)",
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.smileBeam,
            color: color,
          ),
        ),
      ),
    );
  }
}
