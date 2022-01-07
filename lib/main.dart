import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/controllers/accent_color_controller.dart';
import 'package:portfolio_website/controllers/menu_controller.dart';
import 'package:portfolio_website/controllers/navigation_controller.dart';
import 'package:portfolio_website/helpers/messages.dart';
import 'package:portfolio_website/layout.dart';
import 'package:portfolio_website/pages/404/error_page.dart';
import 'package:portfolio_website/pages/projects/projects.dart';
import 'package:portfolio_website/routing/routes.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  Get.put(MyAccentController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale("de", "DE"),
      fallbackLocale: const Locale("de", "DE"),
      initialRoute: homeviewPageRoute,
      unknownRoute: GetPage(
        name: "/not-found",
        page: () => const PageNotFound(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(
            name: projectviewPageRoute, page: () => const ProjectViewPage()),
      ],
      title: 'Nicolas Ebner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme().apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
      ),
      home: SiteLayout(),
    );
  }
}
