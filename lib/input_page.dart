import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/gender_card.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';

enum Gender {
  undisclosed,
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.undisclosed;
  int height = 180;
  int weight = 60;
  int age = 16;

  void weightMinus() {
    setState(() {
      weight--;
    });
  }

  void weightAdd() {
    setState(() {
      weight++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: GenderCard(
                        cardIcon: Icon(FontAwesomeIcons.male, size: 60),
                        cardTitle: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: GenderCard(
                        cardIcon: Icon(FontAwesomeIcons.female, size: 60),
                        cardTitle: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: kHeightTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0xFFEB1555).withOpacity(0.4),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20),
                        thumbColor: Color(0xFFEB1555)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          '$weight',
                          style: kHeightTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                color: Color(0xFF4C4F5E),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icon(FontAwesomeIcons.minus),
                                  iconSize: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                color: Color(0xFF4C4F5E),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(FontAwesomeIcons.plus),
                                  iconSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          '$age',
                          style: kHeightTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                color: Color(0xFF4C4F5E),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icon(FontAwesomeIcons.minus),
                                  iconSize: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                color: Color(0xFF4C4F5E),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(FontAwesomeIcons.plus),
                                  iconSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(),
                ),
              );
            },
            child: Container(
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(child: Text('CALCULATE', style: kBottomContainerStyle,)),
              margin: EdgeInsets.only(top: 10),
            ),
          ),
        ],
      ),
    );
  }
}