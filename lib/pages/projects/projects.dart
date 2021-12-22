import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/pages/projects/widgets/project_card.dart';
import 'package:portfolio_website/pages/projects/widgets/text_divider.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class ProjectViewPage extends StatelessWidget {
  const ProjectViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listViewPadding = (MediaQuery.of(context).size.width - 800) / 2;

    return Container(
      color: myligthDark,
      width: 50,
      child: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: listViewPadding > 16 ? listViewPadding : 16),
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 80, bottom: 80),
            child: CustomText(
              text: "👨‍💻-Projekte, an denen ich gearbeitet habe",
              size: 32,
            ),
          ),
          TextDivider(
            number: "01.",
            text: "als Werksstudent",
          ),
          ProjectCard(
            imageRoute: "tech11.jpg",
            title: "tech11 Core Insurance Platform",
            accentText: "Frontend Entwickler",
            usedTech:
                "JavaScript, ES6 WebComponents, Unit Tests, REST, UI/UX für B2B",
            description:
                "Wir haben einen Programmexecuter für die OokOok Programmiersprache (ähnlich zu Brainfuq) inklusive Compiler geschrieben. Desweiteren haben wir ein Consolen TicTacToe Spiel mit Computer- und Netzwerkübergreifenden Spielen erstellt.",
            alignLeft: true,
            height: 280,
          ),
          TextDivider(number: "02.", text: "an der Universität"),
          ProjectCard(
            imageRoute: "awe.jpg",
            title: "Advanced Web Engineering",
            accentText: "Uni Fach",
            usedTech: ".NET Core 5, C++, HTML, CSS, Bootstrap",
            description:
                "In Gruppenarbeit haben wir eine Webseite zum Verwalten von Thesen und Thesenthema für Lehrstühle programmiert. Note: 1.0",
            alignLeft: false,
            height: 250,
          ),
          SizedBox(
            height: 80,
          ),
          ProjectCard(
            imageRoute: "awe.jpg",
            title: "Programmierpraktikum",
            accentText: "Uni Fach",
            usedTech: "Java",
            description:
                "Wir haben einen Programmexecuter für die OokOok Programmiersprache (ähnlich zu Brainfuq) inklusive Compiler geschrieben. Desweiteren haben wir ein Consolen TicTacToe Spiel mit Computer- und Netzwerkübergreifenden Spielen erstellt.",
            alignLeft: false,
            height: 280,
          ),
          SizedBox(
            height: 80,
          ),
          TextDivider(number: "03.", text: "Privat"),
          ProjectCard(
            imageRoute: "awe.jpg",
            title: "Programmierpraktikum",
            accentText: "Uni Fach",
            usedTech: "Java",
            description:
                "Wir haben einen Programmexecuter für die OokOok Programmiersprache (ähnlich zu Brainfuq) inklusive Compiler geschrieben. Desweiteren haben wir ein Consolen TicTacToe Spiel mit Computer- und Netzwerkübergreifenden Spielen erstellt.",
            alignLeft: true,
            height: 280,
          ),
          SizedBox(
            height: 80,
          ),
          ProjectCard(
            imageRoute: "awe.jpg",
            title: "Programmierpraktikum",
            accentText: "Uni Fach",
            usedTech: "Java",
            description:
                "Wir haben einen Programmexecuter für die OokOok Programmiersprache (ähnlich zu Brainfuq) inklusive Compiler geschrieben. Desweiteren haben wir ein Consolen TicTacToe Spiel mit Computer- und Netzwerkübergreifenden Spielen erstellt.",
            alignLeft: false,
            height: 280,
          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
