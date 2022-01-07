import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/controllers.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/internet_service.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/pages/projects/widgets/project_card.dart';
import 'package:portfolio_website/pages/projects/widgets/text_divider.dart';
import 'package:portfolio_website/widgets/custom_text.dart';
import 'package:get/get.dart';

class ProjectViewPage extends StatelessWidget {
  const ProjectViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listViewPadding = (MediaQuery.of(context).size.width - 820) / 2;

    return Container(
      color: myligthDark,
      width: 50,
      child: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: listViewPadding > 16 ? listViewPadding : 16),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                // left: 8,
                top: 80,
              ),
              child: CustomText(
                text: "PROJECTS_TITLE".tr,
                size: 32,
                weigth: FontWeight.bold,
              ),
            ),
          ),
          TextDivider(
            number: "01.",
            text: "PROJECTS_WORKING_STUDENT".tr,
          ),
          ProjectCard(
            imageRoute: "tech11_2.jpg",
            title: "PROJECTS_TECH11_TITLE".tr,
            accentText: "PROJECTS_TECH11_ACCENT".tr,
            usedTech: "PROJECTS_TECH11_TECH".tr,
            description: "PROJECTS_TECH11_DESCRIPTION".tr,
            alignLeft: false,
            height: 310,
          ),

          TextDivider(number: "02.", text: "PROJECTS_AT_UNIVERSITY".tr),
          ProjectCard(
            imageRoute: "bachelorarbeit_screen.jpg",
            title: ResponsiveWidget.isSmallerThanLargeScreen(context)
                ? "PROJECTS_BA_TITLE_SHORT".tr
                : "PROJECTS_BA_TITLE".tr,
            accentText: "PROJECTS_BA_ACCENT".tr,
            usedTech: "PROJECTS_BA_TECH".tr,
            description: "PROJECTS_BA_DESCRIPTION".tr,
            alignLeft: true,
            height: 340,
            descriptionChild: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Obx(
                () => ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: myAccentController.myAccentColor),
                  onPressed: () => openWeb(
                      "https://www.github.com/nicolasebner/bachelorarbeit"),
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 16,
                  ),
                  label: const Text("Github"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ProjectCard(
            imageRoute: "awe.jpg",
            title: "PROJECTS_AWE_TITLE".tr,
            accentText: "PROJECTS_AWE_ACCENT".tr,
            usedTech: "PROJECTS_AWE_TECH".tr,
            description: "PROJECTS_AWE_DESCRIPTION".tr,
            alignLeft: false,
            height: 318,
          ),
          const SizedBox(
            height: 40,
          ),
          ProjectCard(
            imageRoute: "epp.jpg",
            title: "PROJECTS_EPP_TITLE".tr,
            accentText: "PROJECTS_EPP_ACCENT".tr,
            usedTech: "PROJECTS_EPP_TECH".tr,
            description: "PROJECTS_EPP_DESCRIPTION".tr,
            alignLeft: true,
            height: 280,
          ),
          // PRIVATE PROJEKTE
          TextDivider(number: "03.", text: "PROJECTS_PRIVAT".tr),
          ProjectCard(
            imageRoute: "beerpong.jpg",
            title: "PROJECTS_BEERPONG_TITLE".tr,
            accentText: "PROJECTS_BEERPONG_ACCENT".tr,
            usedTech: "PROJECTS_BEERPONG_TECH".tr,
            description: "PROJECTS_BEERPONG_DESCRIPTION".tr,
            alignLeft: true,
            height: 280,
          ),
          const SizedBox(
            height: 40,
          ),

          ProjectCard(
            imageRoute: "quicktype_edited.jpg",
            title: "PROJECTS_QUICKTYPE_TITLE".tr,
            accentText: "PROJECTS_QUICKTYPE_ACCENT".tr,
            usedTech: "PROJECTS_QUICKTYPE_TECH".tr,
            description: "PROJECTS_QUICKTYPE_DESCRIPTION".tr,
            descriptionChild: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Obx(
                () => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: myAccentController.myAccentColor),
                  onPressed: () => openWeb(
                      "https://nicolasebner.github.io/quicktype.github.io/"),
                  child: Text("PROJECTS_QUICKTYPE_TRY_IT".tr),
                ),
              ),
            ),
            alignLeft: false,
            height: 280,
          ),
          const SizedBox(
            height: 40,
          ),

          ProjectCard(
            imageRoute: "pomodoro.jpg",
            title: "PROJECTS_POMODORO_TITLE".tr,
            accentText: "PROJECTS_POMODORO_ACCENT".tr,
            usedTech: "PROJECTS_POMODORO_TECH".tr,
            description: "PROJECTS_POMODORO_DESCRIPTION".tr,
            alignLeft: true,
            height: 280,
          ),
          const SizedBox(
            height: 40,
          ),

          ProjectCard(
            imageRoute: "udemy.jpg",
            title: "PROJECTS_UDEMY_TITLE".tr,
            accentText: "PROJECTS_UDEMY_ACCENT".tr,
            description: "PROJECTS_UDEMY_DESCRIPTION".tr,
            alignLeft: false,
            height: 290,
            bigDescription: true,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
