import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/responsiveness.dart';
import 'package:portfolio_website/widgets/contact_row.dart';
import 'package:portfolio_website/widgets/custom_text.dart';
import 'package:get/get.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveWidget.isSmallerThanLargeScreen(context) ? 250 : 350,
      height: 520,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 120,
              ),
              Image.asset(
                "gif_1_transparent.gif",
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          const Spacer(),
          const CustomText(
            text: "Nicolas Ebner",
            weigth: FontWeight.bold,
            size: 26,
          ),
          const Spacer(),
          Container(
            height: 2,
            width: 40,
            color: myAccent,
          ),
          const Spacer(),
          CustomText(
            text: "NAV_DEVELOPER".tr,
            size: 22,
          ),
          const Spacer(),
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: ContactRow(),
            ),
          )
        ],
      ),
    );
  }
}
