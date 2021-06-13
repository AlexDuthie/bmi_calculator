import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
