import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/pages/contact/widgets/contact_form.dart';
import 'package:portfolio_website/widgets/contact_row.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

import 'package:get/get.dart';

class ContactViewPage extends StatelessWidget {
  const ContactViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: myligthDark,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: myligth,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: 600,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  text: "NAV_CONTACT".tr,
                  size: 22,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 200),
                  child: ContactRow(),
                ),
                CustomText(text: "OR".tr),
                ContactForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
