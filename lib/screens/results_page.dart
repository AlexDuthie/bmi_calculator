import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

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
                  SizedBox(height: 55,),
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    bmiResult.toUpperCase(),
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 40,),
                  Text(
                    interpretation.toUpperCase(),
                    textAlign: TextAlign.center,
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
