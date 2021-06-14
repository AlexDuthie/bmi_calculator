import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Your Result',
                  style: kResultTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80,),
                  Text(
                    'OVERWEIGHT',
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                  SizedBox(height: 50,),
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  SizedBox(height: 80,),
                  Text(
                    'You have blad blh abl'
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(
                context
              );
            },
            child: Container(
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(child: Text('RE-CALCULATE', style: kBottomContainerStyle,)),
              margin: EdgeInsets.only(top: 10),
            ),
          )
        ],
      ),
    );
  }
}
