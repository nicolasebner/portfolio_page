import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/controllers/scroll_notification_listener.dart';
import 'package:portfolio_website/pages/home/widgets/personal_card.dart';
import 'package:portfolio_website/pages/home/widgets/welcome_text.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    final setHeight = height < 700.0 ? 700.0 : height;

    return ScrollNotificationListener(
      position: 0,
      child: ListView(
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
            ],
          ),
          // Arrow
          Container(
            color: Colors.blue,
            height: 900,
          )
        ],
      ),
    );
  }
}
