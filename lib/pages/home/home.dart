import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/pages/home/widgets/personal_card.dart';
import 'package:portfolio_website/pages/home/widgets/welcome_text.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    final setHeight = height < 700.0 ? 700.0 : height;

    return ListView(
      children: [
        Stack(
          children: [
            // Background
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(color: myligthDark, height: setHeight),
                ),
                const Expanded(flex: 5, child: SizedBox()),
              ],
            ),

            // Content
            Padding(
              padding: EdgeInsets.only(top: (setHeight - 520.0) / 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  PersonalCard(),
                  SizedBox(width: 50),
                  WelcomeText(),
                ],
              ),
            ),

            const Positioned(
              bottom: 10,
              right: 32,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Created with Flutter",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const Positioned(
              bottom: 10,
              right: 10,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: FlutterLogo(
                    size: 20,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
