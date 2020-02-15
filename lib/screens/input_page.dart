import 'package:bmi_app/screens/ResultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_app/components/ReUsableCard.dart';
import 'package:bmi_app/components/ReUsableColItems.dart';
import 'package:bmi_app/constant.dart';
import 'package:bmi_app/components/RoundedIconButton.dart';
import 'package:bmi_app/components/ButtonWidget.dart';

//gender
enum Gender {
  female,
  male,
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // variable that stores the selected gender
  Gender gender;

  // height variable
  int height = 80;

  // weight variable
  int weight = 40;

  // age variable
  int age = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    colour: gender == Gender.male ? kActiveReUsableCardColour : kInActiveCardColour,
                    cardChild: ReUsableColIterm(
                      icon: FontAwesomeIcons.mars,
                      textLabel: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    colour: gender == Gender.female ? kActiveReUsableCardColour : kInActiveCardColour,
                    cardChild: ReUsableColIterm(
                      icon: FontAwesomeIcons.venus,
                      textLabel: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: styleLabel,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: styleNumberLabel,
                      ),
                      Text('cm')
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 80.0,
                    max: 500.0,
                    activeColor: kBottomContainerColor,
                    inactiveColor: kGreyColour,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
              colour: kActiveReUsableCardColour,
            )
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT',
                            style: styleLabel,
                        ),
                        Text(weight.toString(),
                          style: styleNumberLabel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                             width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveReUsableCardColour,
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE',
                        style: styleLabel,
                        ),
                        Text(age.toString(),
                        style: styleNumberLabel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveReUsableCardColour,
                  )
                ),
              ],
            ),
          ),
          ButtonWidget(
            buttonLabel: 'CALCULATE',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
            },
          ),
        ],
      ),
    );
  }
}




