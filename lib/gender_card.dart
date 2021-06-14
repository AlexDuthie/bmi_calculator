import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({required this.cardIcon, required this.cardTitle});

  final Icon cardIcon;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        cardIcon,
        SizedBox(
          height: 15,
        ),
        Text(
          '$cardTitle',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
