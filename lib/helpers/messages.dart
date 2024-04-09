import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "de_DE": {
          "HOME_HELLO": "Hallo",
          "HOME_HELLO_CAPTION":
              "ich bin Student der Wirtschaftsinformatik M.Sc. @TUM und Softwareentwickler",
          "HOME_DESCRIPTION":
              "Dem Studiengang entsprechend liegen meine Interessen in den Bereichen Wirtschaft und Informatik, *wobei die Informatik mich mehr begeistert*. Zuletzt habe ich mich in der Position eines technischen Product Owners versucht und es hat mir sehr gefallen.",
          "NAV_HOME": "Home",
          "NAV_PROJECTS": "Projekte",
          "NAV_CONTACT": "Kontakt",
          "NAV_DEVELOPER": "Softwareentwickler",
          "PROJECTS_TITLE": "👨🏽‍💻-Projekte, an denen ich gearbeitet habe",
          "PROJECTS_WORKING_STUDENT": "als Praktikant & Werkstudent",
          "PROJECTS_PROSIEBEN_ACCENT": "Product Owner",
          "PROJECTS_PROSIEBEN_TITLE": "ProSiebenSat.1 - GenAI Playground",
          "PROJECTS_PROSIEBEN_DESCRIPTION":
              "Mit dem *GenAI Playground* haben mein Team und ich GenAI für Mitarbeitende von P7S1 zugänglich und nützlich gemacht. Meine Position umfasste viele Facetten des Product Managements und der Entwicklung mit GenAI, wie *Vision-, Roadmap-Planung, Stakeholder- & Backlog-Management, UI/UX-Design, Prompt Engineering...*",
          "PROJECTS_PROSIEBEN_TECH":
              "Product Management, GenAI, Azure OpenAI, AWS, Python, Streamlit",
          "PROJECTS_ITERATEC_ACCENT": "Full-Stack Softwareentwickler",
          "PROJECTS_ITERATEC_TITLE": "iteratec - econican",
          "PROJECTS_ITERATEC_DESCRIPTION":
              "Ich habe an der *Entwicklung der WebApp* von '*econican*' gearbeitet. Diese ermöglicht eine vereinfachte Durchführung von medizinischen Studien durch einen End-to-End digitalisierten Prozess. Ich habe sowohl im *Frontend* und *Backend* als auch im Bereich *DevOps* gearbeitet.",
          "PROJECTS_ITERATEC_TECH": "Angular, Spring Boot, Kotlin, REST, Azure",
          "PROJECTS_TECH11_ACCENT": "Frontend Entwickler",
          "PROJECTS_TECH11_TITLE": "tech11 - Core Insurance Platform",
          "PROJECTS_TECH11_DESCRIPTION":
              "Die *tech11* entwickelt eine Core Insurance Platform. Ich habe dort als Entwickler das *internationale Frontend-Team* unterstützt und ggf. auch die Moderation kleinerer Meetings übernommen. Zwei größere Aufgaben unter meiner Verantwortung waren die *Implementierung des Release-Managements* und des *E-Mail Services* in der Platform.",
          "PROJECTS_TECH11_TECH":
              "JavaScript, ES6 WebComponents, Unit Tests, REST, UI/UX für B2B",
          "PROJECTS_AT_UNIVERSITY": "an der Universität",
          "PROJECTS_BA_ACCENT": "Bachelorarbeit",
          "PROJECTS_BA_TITLE":
              "Der Trade-off zwischen Differential Privacy und Effektivität",
          "PROJECTS_BA_TITLE_SHORT":
              "Der Trade-off zwischen Differential Privacy\nund Effektivität",
          "PROJECTS_BA_DESCRIPTION":
              "*Differential Privacy* ist eine neuartige Methode um die Privatsphäre beim *Machine Learning* durch Zufall zu schützen. In dieser Arbeit habe ich *synthetische Daten mittels eines GAN's* erstellt, welche Differential Privacy in verschiedenen Stärken unterstützen. Im Anschluss habe ich die *Effektivität dieser verglichen und bewertet*.\n*Note: 1.7*",
          "PROJECTS_BA_TECH":
              "Python, Data Science, GAN's, Differential Privacy",
          "PROJECTS_KAIROS_ACCENT": "Uni Fach",
          "PROJECTS_KAIROS_TITLE": "Kairos",
          "PROJECTS_KAIROS_DESCRIPTION":
              "*Communicate with Confidence* - Eine Plattform auf der man effektive Kommunikation trainieren kann. *Sprich mit einem KI-Tutor* und er gibt dir Feedback über deine Sprache. Ich habe sowohl im *Produkt Management* als auch bei der Entwicklung von *Front- und Backend* mitgewirkt.\n*Note: 1.0*",
          "PROJECTS_KAIROS_TECH": "React, Node.js, OpenAI API",
          "PROJECTS_TC_ACCENT": "Tech Challenge @UnternehmerTUM",
          "PROJECTS_TC_TITLE": "LegalTech - Simplyfy LegalAid",
          "PROJECTS_TC_DESCRIPTION":
              "Mein Team und Ich haben die *LegalTech Tech Challenge gewonnen* (ein 3-monatiger Wettbewerb von UnternehmerTUM). Ich war mit für die Ideenausarbeitung und der Plattformentwicklung verantwortlich. \n*Note: 1.0*",
          "PROJECTS_TC_TECH": "React, Firebase, UI/UX-Design, LegalTech",
          "PROJECTS_AWE_ACCENT": "Uni Fach",
          "PROJECTS_AWE_TITLE": "Advanced Web Engineering",
          "PROJECTS_AWE_DESCRIPTION":
              "In Gruppenarbeit haben wir eine *Webseite zum Verwalten von Thesen/-themen für Lehrstühle* entwickelt. Meine Aufgaben waren die *Authentifizierung* der Nutzer sowie das *Zusammenspiel der Datenbank und des Interfaces*. Zudem war ich Hauptverantwortlicher für das *Frontend*. \n*Note: 1.0*",
          "PROJECTS_AWE_TECH": ".NET Core 5, C++, HTML, CSS, SQL, Bootstrap",
          "PROJECTS_EPP_ACCENT": "Uni Fach",
          "PROJECTS_EPP_TITLE": "Programmierpraktikum",
          "PROJECTS_EPP_DESCRIPTION":
              "Das Praktikum bestand aus *drei Aufgaben*. Als erstes haben wir eine Anwendung inklusive Parser, Interpreter und Executer entwickelt, welche *Ook-Programme* (ähnlich zu Brainfuck) ausführen kann. Die zweite Aufgabe war ein *Feiertagskalender* und die Dritte ein netzwerkübergreifendes *TicTacToe-Spiel*.",
          "PROJECTS_EPP_TECH":
              "Java, Objektorientierte Programmierung, Vererbung, Polymorphie",
          "PROJECTS_PRIVAT": "Privat",
          "PROJECTS_BEERPONG_ACCENT": "Cross-Plattform Mobile-App",
          "PROJECTS_BEERPONG_TITLE": "LogPong",
          "PROJECTS_BEERPONG_DESCRIPTION":
              "Eine App mit *User-Authentifizierung* und *Realtime-Database*, in der man die Ergebnisse von *BeerPong-Spielen* eintragen kann, um im Anschluss einen *Überblick über die letzten Spiele und die Performance aller Spieler* zu erhalten.",
          "PROJECTS_BEERPONG_TECH":
              "Flutter/Dart, Firebase, Cloud-Firestore, Realtime-Database, UI-Design",
          "PROJECTS_QUICKTYPE_ACCENT": "Webseite",
          "PROJECTS_QUICKTYPE_TITLE": "QuickType",
          "PROJECTS_QUICKTYPE_DESCRIPTION":
              "Eine einfache Webseite, auf der man seine *Tippgeschwindigkeit* messen kann, nicht mehr aber auch nicht weniger.",
          "PROJECTS_QUICKTYPE_TECH": "Javascript, Html, CSS, ES6 WebComponents",
          "PROJECTS_QUICKTYPE_TRY_IT": "Probier es aus!",
          "PROJECTS_POMODORO_ACCENT": "Cross-Plattform Mobile-App",
          "PROJECTS_POMODORO_TITLE": "Simply Pomodoro",
          "PROJECTS_POMODORO_DESCRIPTION":
              "Die Pomodoro-Technik ist eine *Methode des Zeitmanagements* und legt eine Struktur für Arbeits- und Pausenabschnitte fest. Dieser Timer mit *einfacher Benutzeroberfläche* hilft dabei diese Sequenzen einzuhalten und damit die *Methode effizient durchzuführen*.",
          "PROJECTS_POMODORO_TECH":
              "Flutter/Dart, UI-Design, animierte-Widgets",
          "PROJECTS_UDEMY_ACCENT": "Always Keep Learning",
          "PROJECTS_UDEMY_TITLE": "Udemy Kurse",
          "PROJECTS_UDEMY_DESCRIPTION":
              "Des Weiteren habe ich einige *Projekte nachgebaut*, welche in unterschiedlichen Udemy Kursen vorkommen. Folgende Kurse habe ich *komplett abgeschlossen*:\n\n - The Complete *Web Development* Bootcamp\n - *Flutter & Dart* - The Complete Guide\n - *Python*: Data Science, Machine Learning AI & Neuronale Netze\n - The Complete *JavaScript* Course: From Zero to Expert!\n - *Angular* - The Complete Guide\n - *DevOps* Beginners to Advanced with Projects\n - How to become a strong *Product Owner*",
          "OR": "oder",
          "CONTACT_SEND": "Nachricht abschicken",
          "CONTACT_SEND_SUCCESS": "Erfolgreich Gesendet!",
          "CONTACT_SEND_FAIL": "Da ist etwas schief gegangen!",
          "CONTACT_NAME": "Name",
          "CONTACT_EMAIL": "E-Mail",
          "CONTACT_SUBJECT": "Betreff",
          "CONTACT_MESSAGE": "Nachricht",
          "CONTACT_NAME_MANDATORY": "Name ist ein Pflichtfeld",
          "CONTACT_EMAIL_MANDATORY": "E-Mail ist ein Pflichtfeld",
          "CONTACT_EMAIL_NO_MAIL": "Das ist keine E-Mail Adresse ;)",
          "CONTACT_SUBJECT_MANDATORY": "Betreff ist ein Pflichtfeld",
          "CONTACT_MESSAGE_MANDATORY": "Nachricht ist ein Pflichtfeld",
          "SMALL_SCREEN_NOT_YET":
              "Hallo, leider habe ich diese Seite noch nicht für kleine Geräte optimiert. Klick auf einen Kontakt-Link oder schau wieder am Computer vorbei:)",
        },
        "en_US": {
          "HOME_HELLO": "Hello",
          "HOME_HELLO_CAPTION":
              "I am a master student of business and computer science @TUM and software developer",
          "HOME_DESCRIPTION":
              "According to my studies, my interests are in the fields of business and computer science. *Whereby computer science inspires me more*. Lately tried myself in the position of a technical product owner and really enjoyed it.",
          "NAV_HOME": "Home",
          "NAV_PROJECTS": "Projects",
          "NAV_CONTACT": "Contact",
          "NAV_DEVELOPER": "Software Developer",
          "PROJECTS_TITLE": "👨🏽‍💻-Projects, i've worked on",
          "PROJECTS_WORKING_STUDENT": "as intern & working student",
          "PROJECTS_PROSIEBEN_ACCENT": "Product Owner",
          "PROJECTS_PROSIEBEN_TITLE": "ProSiebenSat.1 - GenAI Playground",
          "PROJECTS_PROSIEBEN_DESCRIPTION":
              "With the *GenAI Playground*, my team and I made GenAI accessible and useful for employees of P7S1. My role encompassed many facets of product management and development with GenAI, such as *product vision and roadmap planning, stakeholder & backlog management, UI/UX design, prompt engineering...*",
          "PROJECTS_PROSIEBEN_TECH":
              "Product Management, GenAI, Azure OpenAI, AWS, Python, Streamlit",
          "PROJECTS_ITERATEC_ACCENT": "Full-Stack Software Developer",
          "PROJECTS_ITERATEC_TITLE": "iteratec - econican",
          "PROJECTS_ITERATEC_DESCRIPTION":
              "I worked on the development of the *WebApp* for '*econican*', which facilitates the simplified execution of medical studies through an end-to-end digitized process. I worked in both *frontend* and *backend* as well as in the area of *DevOps*.",
          "PROJECTS_ITERATEC_TECH": "Angular, Spring Boot, Kotlin, REST, Azure",
          "PROJECTS_TECH11_ACCENT": "Frontend Developer",
          "PROJECTS_TECH11_TITLE": "tech11 - Core Insurance Platform",
          "PROJECTS_TECH11_DESCRIPTION":
              "*tech11* is developing a Core Insurance Platform. I supported the *international frontend team* as a developer and also moderated small meetings where necessary. Two major tasks under my responsibility were the *implementation of the release management* and the *email service* in the platform.",
          "PROJECTS_TECH11_TECH":
              "JavaScript, ES6 WebComponents, Unit Tests, REST, UI/UX for B2B",
          "PROJECTS_AT_UNIVERSITY": "at the university",
          "PROJECTS_BA_ACCENT": "bachelor thesis",
          "PROJECTS_BA_TITLE":
              "the trade-off between differential privacy and effectiveness",
          "PROJECTS_BA_TITLE_SHORT":
              "the trade-off between differential privacy\nand effectiveness",
          "PROJECTS_BA_DESCRIPTION":
              "*Differential Privacy* is a new method to protect privacy in *machine learning* by randomness. In this work, I created *synthetic data using GAN's* that support Differential Privacy in various strengths. Subsequently, I compared and evaluated the *effectiveness of these*.\n*grade: 1.7 (A-)*",
          "PROJECTS_BA_TECH":
              "Python, Data Science, GAN's, Differential Privacy",
          "PROJECTS_KAIROS_ACCENT": "Uni subject",
          "PROJECTS_KAIROS_TITLE": "Kairos",
          "PROJECTS_KAIROS_DESCRIPTION":
              "*Communicate with Confidence* - A platform where you can train effective communication. *Speak with an AI tutor* and receive feedback on your language. I contributed in both *Product Management* and the development of *Frontend* and *Backend*.\nGrade: 1.0",
          "PROJECTS_KAIROS_TECH": "React, Node.js, OpenAI API",
          "PROJECTS_TC_ACCENT": "Tech Challenge @UnternehmerTUM",
          "PROJECTS_TC_TITLE": "LegalTech - Simplify LegalAid",
          "PROJECTS_TC_DESCRIPTION":
              "My team and I *won the LegalTech Tech Challenge* (a 3-month competition by UnternehmerTUM). I was responsible for the *idea development* and *platform development*. \nGrade: 1.0",
          "PROJECTS_TC_TECH": "React, Firebase, UI/UX Design, LegalTech",
          "PROJECTS_AWE_ACCENT": "Uni subject",
          "PROJECTS_AWE_TITLE": "Advanced Web Engineering",
          "PROJECTS_AWE_DESCRIPTION":
              "In group work we developed a *website for managing theses/-topics for university chairs*. My tasks were the *authentication* of the users, the *interaction of the database and the interface* and I was mainly responsible for the *front-end*. \n*Grade: 1.0 (A+)*",
          "PROJECTS_AWE_TECH": ".NET Core 5, C++, HTML, CSS, SQL, Bootstrap",
          "PROJECTS_EPP_ACCENT": "Uni subject",
          "PROJECTS_EPP_TITLE": "Programming internship",
          "PROJECTS_EPP_DESCRIPTION":
              "The internship consisted of *three tasks*. In the first, we developed an application that runs *Ook programs* (similar to Brainfuck), including a parser, interpreter, and executor. The second task was a *holiday calendar* and the third was a cross-network *TicTacToe game*.",
          "PROJECTS_EPP_TECH":
              "Java, object-oriented programming, inheritance, polymorphism",
          "PROJECTS_PRIVAT": "privat",
          "PROJECTS_BEERPONG_ACCENT": "Cross-Platform Mobile-App",
          "PROJECTS_BEERPONG_TITLE": "LogPong",
          "PROJECTS_BEERPONG_DESCRIPTION":
              "An app with *user authentication* and *real-time database*, where you can enter the scores of *BeerPong games* to have an *overview of the performance of all players* afterwards.",
          "PROJECTS_BEERPONG_TECH":
              "Flutter/Dart, Firebase, Cloud-Firestore, Realtime-Database, UI-Design",
          "PROJECTS_QUICKTYPE_ACCENT": "Website",
          "PROJECTS_QUICKTYPE_TITLE": "QuickType",
          "PROJECTS_QUICKTYPE_DESCRIPTION":
              "A simple website where you can measure your *typing speed*, nothing more but nothing less. (Currently only available in German)",
          "PROJECTS_QUICKTYPE_TECH": "Javascript, Html, CSS, ES6 WebComponents",
          "PROJECTS_QUICKTYPE_TRY_IT": "Try it!",
          "PROJECTS_POMODORO_ACCENT": "Cross-Platform Mobile-App",
          "PROJECTS_POMODORO_TITLE": "Simply Pomodoro",
          "PROJECTS_POMODORO_DESCRIPTION":
              "The Pomodoro technique is a *method of time management* and sets a structure for work and break intervals. This timer with a *simple user interface* helps to keep track of the sections and thus helps to carry out the *method efficiently*.",
          "PROJECTS_POMODORO_TECH": "Flutter/Dart, UI-Design, animated Widgets",
          "PROJECTS_UDEMY_ACCENT": "Always Keep Learning",
          "PROJECTS_UDEMY_TITLE": "Udemy courses",
          "PROJECTS_UDEMY_DESCRIPTION":
              "Furthermore, I have replicated some projects that appear in different Udemy courses. I have completed the following courses:\n - The Complete 2021 *Web Development* Bootcamp\n - *Flutter & Dart* - The Complete Guide\n - *Python*: Data Science, Machine Learning AI & Neuronale Netze\n - The Complete *JavaScript* Course 2021: From Zero to Expert!\n - *Angular* - The Complete Guide\n - *DevOps* Beginners to Advanced with Projects\n - How to become a strong *Product Owner*",
          "OR": "or",
          "CONTACT_SEND": "Send message",
          "CONTACT_SEND_SUCCESS": "Successfully sent!",
          "CONTACT_SEND_FAIL": "Something went wrong!",
          "CONTACT_NAME": "Name",
          "CONTACT_EMAIL": "E-Mail",
          "CONTACT_SUBJECT": "Subject",
          "CONTACT_MESSAGE": "Message",
          "CONTACT_NAME_MANDATORY": "Name is mandatory",
          "CONTACT_EMAIL_MANDATORY": "E-Mail is mandatory",
          "CONTACT_EMAIL_NO_MAIL": "This is no E-Mail address ;)",
          "CONTACT_SUBJECT_MANDATORY": "Subject is mandatory",
          "CONTACT_MESSAGE_MANDATORY": "Message is mandatory",
          "SMALL_SCREEN_NOT_YET":
              "Hello, unfortunately I have not yet optimized this page for small devices. Click on a contact link or check again on the computer :)",
        },
      };
}
