import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class ProjectViewPage extends StatelessWidget {
  const ProjectViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myligth,
      child: ListView(
          children: [CustomText(text: "Some programming things i worked on")]),
    );
  }
}
