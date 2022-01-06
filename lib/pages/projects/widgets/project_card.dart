import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/filters.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/pages/projects/widgets/project_image.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class ProjectCard extends StatelessWidget {
  final bool alignLeft;
  final double height;
  final String imageRoute;
  final String accentText;
  final String title;
  final String description;
  final String usedTech;
  final Widget descriptionChild;
  final bool bigDescription;

  const ProjectCard({
    Key? key,
    this.alignLeft = true,
    this.height = 300,
    required this.imageRoute,
    this.accentText = "",
    required this.title,
    required this.description,
    this.usedTech = "",
    this.descriptionChild = const SizedBox(),
    this.bigDescription = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthOfCard = ResponsiveWidget.isLargeScreen(context)
        ? 800.0
        : ResponsiveWidget.isMediumScreen(context)
            ? 800.0
            : 600.0;

    return Container(
      padding: EdgeInsets.all(20),
      height: height + 40,
      width: (widthOfCard),
      decoration: BoxDecoration(
        color: myligth,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            child: ProjectImage(
                imageRoute: imageRoute,
                height: title.length > 40 ? height * 0.85 : height),
            bottom: usedTech.length > 50 ? 45 : 20,
            right: alignLeft ? 0 : null,
          ),
          Positioned(
            right: alignLeft ? null : 0,
            child: CustomText(
              text: accentText,
              color: myAccent,
            ),
          ),

          // Title
          Positioned(
            top: 22,
            right: alignLeft ? null : 0,
            child: CustomText(
              text: title,
              size: 26,
              weigth: FontWeight.bold,
            ),
          ),
          Positioned(
            top: 82,
            right: alignLeft ? null : 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              color: Colors.grey[100],
              width: bigDescription ? widthOfCard * 0.70 : widthOfCard * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: description,
                  ),
                  descriptionChild,
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: alignLeft ? null : 0,
            child: CustomText(
              text: usedTech,
              weigth: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
