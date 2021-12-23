import 'package:flutter/material.dart';
import 'package:portfolio_website/controllers/scroll_notification_listener.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class ContactViewPage extends StatelessWidget {
  const ContactViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScrollNotificationListener(
        position: 2,
        child: ListView(
          children: [
            CustomText(text: "Contact"),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
