import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Locale locale;
        Get.locale.toString() == "de_DE"
            ? locale = const Locale("en", "US")
            : locale = const Locale("de", "DE");
        Get.updateLocale(locale);
      },
      child: CustomText(
        text: Get.locale.toString() == "de_DE" ? "🇬🇧" : "🇩🇪",
        size: 16,
      ),
    );
  }
}
