import 'package:bmi_app/components/ReUsableCard.dart';
import 'package:bmi_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/components/ButtonWidget.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text('Your Result',
            style: styleNumberLabel,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 6,
            child: ReUsableCard(
              colour: kActiveReUsableCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('OVERWEIGHT',
                  style: styleResult,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('26.6',
                    style: styleNumberLabelBig,
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text('Description description description description description decription',
                      style: styleLabel,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              buttonLabel: 'RE-CALCULATE',
            ),
          )
        ],
      ),
    );
  }
}

