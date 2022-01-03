import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/internet_service.dart';
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
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 8, top: 80, bottom: 34),
              child: CustomText(
                text: "👨🏽‍💻-Projekte, an denen ich gearbeitet habe",
                size: 32,
                weigth: FontWeight.bold,
              ),
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
                "Die tech11 entwickelt eine Core Insurance Platform. Ich habe dort als Entwickler das internationale Frontend-Team unterstützt und ggf. auch die Moderation kleinerer Meetings übernommen. Zwei größere Aufgaben unter meiner Verantwortung war die Implementierung des Release-Managements und des E-Mail Services in der Platform.",
            alignLeft: false,
            height: 310,
          ),

          // UNI PROJETKE
          TextDivider(number: "02.", text: "an der Universität"),
          ProjectCard(
            imageRoute: "bachelorarbeit_screen.jpg",
            title: "Trade-off bei Differential Privacy und Effektivität",
            accentText: "Bacherlorarbeit",
            usedTech: "Java",
            descriptionChild: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton.icon(
                onPressed: () => openWeb(
                    "https://www.github.com/nicolasebner/bachelorarbeit"),
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  size: 16,
                ),
                // icon: const Icon(Icons.g_mobiledata),
                label: const Text("Github"),
              ),
            ),
            description:
                "Wir haben einen Programmexecuter für die OokOok Programmiersprache (ähnlich zu Brainfuq) inklusive Compiler geschrieben. Desweiteren haben wir ein Consolen TicTacToe Spiel mit Computer- und Netzwerkübergreifenden Spielen erstellt.",
            alignLeft: true,
          ),
          SizedBox(
            height: 80,
          ),
          ProjectCard(
            imageRoute: "awe.jpg",
            title: "Advanced Web Engineering",
            accentText: "Uni Fach",
            usedTech: ".NET Core 5, C++, HTML, CSS, SQL, Bootstrap",
            description:
                "In Gruppenarbeit haben wir eine Webseite zum Verwalten von Thesen/-themen für Lehrstühle entwickelt. Meine Aufgaben waren die Authentifizierung der Nutzer, das Zusammenspiel der Datenbank und des Interfaces und ich war Hauptverantwortlich für das Frontend. Note: 1.0",
            alignLeft: false,
            height: 300,
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
            alignLeft: true,
            height: 280,
          ),

          // PRIVATE PROJEKTE
          TextDivider(number: "03.", text: "Privat"),
          ProjectCard(
            imageRoute: "pomodoro.jpg",
            title: "Simply Pomodoro",
            accentText: "Cross-Plattform Mobile-App",
            usedTech: "Flutter/Dart, Firebase, ",
            description:
                "Die Pomodoro-Technik ist eine Methode des Zeitmanagements und gibt eine Struktur für Arbeits- und Pausen-Abschnitte. Dieser Timer hilft diese Methode besser durchzuführen.",
            alignLeft: false,
            height: 280,
          ),
          SizedBox(
            height: 80,
          ),
          ProjectCard(
            imageRoute: "beerpong.jpg",
            title: "LogPong",
            accentText: "Cross-Plattform Mobile-App",
            usedTech: "Flutter/Dart, Firebase, ",
            description:
                "Eine App in der man die Ergebnisse von BeerPong Spielen eintragen kann um im Anschluss einen Überblick über die Performance aller Spieler haben zu können.",
            alignLeft: true,
            height: 280,
          ),
          SizedBox(
            height: 80,
          ),

          ProjectCard(
            imageRoute: "quicktype_edited.jpg",
            title: "QuickType",
            accentText: "Webseite",
            usedTech: "Javascript, Html, CSS",
            description:
                "Eine einfache Webseite, auf der man seine Tippgeschwindigkeit messen kann, nicht mehr aber auch nicht weniger.",
            descriptionChild: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: OutlinedButton(
                  onPressed: () => openWeb(
                      "https://nicolasebner.github.io/quicktype.github.io/"),
                  child: const Text("Probier es aus!")),
            ),
            alignLeft: false,
            height: 280,
          ),

          SizedBox(
            height: 80,
          ),
          ProjectCard(
            imageRoute: "awe.jpg",
            title: "Udemy Kurse",
            accentText: "Always Keep Learning",
            usedTech: "Flutter/Dart, Firebase, ",
            description: "Des Weiteren habe ich einige ",
            alignLeft: true,
            height: 280,
          ),
          SizedBox(
            height: 80,
          ),
          // ProjectCard(
          //   imageRoute: "awe.jpg",
          //   title: "Mensa",
          //   accentText: "Webseite",
          //   usedTech: "Javascript, Html, CSS",
          //   description:
          //       "Eine einfache Webseite, auf der man seine Tippgeschwindigkeit messen kann, nicht mehr aber auch nicht weniger.",
          //   alignLeft: false,
          //   height: 280,
          // ),
          // SizedBox(
          //   height: 80,
          // ),
        ],
      ),
    );
  }
}
