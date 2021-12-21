import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveWidget.isSmallerThanLargeScreen(context) ? 250 : 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(text: "Hallo", weigth: FontWeight.bold, size: 66),
          const CustomText(text: "Wer ich bin & was ich mache", size: 22),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 22),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("LEBENSLAUF"),
                  style: ElevatedButton.styleFrom(
                    primary: myAccent,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("PROJEKTE"),
                style: OutlinedButton.styleFrom(
                  primary: myAccent,
                ),
              )
            ],
          ),
          const CustomText(
              text:
                  "Ich bin ein Textabschnitt. Klicken Sie hier, um einen Text hinzuzufügen und mich zu bearbeiten. Klicken Sie auf Text bearbeiten oder doppelklicken Sie, um loszulegen. Dies ist der ideale Ort, um einen langen Text über Ihr Unternehmen zu schreiben."),
        ],
      ),
    );
  }
}
