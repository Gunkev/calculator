import 'package:flutter/material.dart';
import 'package:bmi_app/constant.dart';

// custom reusable  button
class ButtonWidget extends StatelessWidget {
  ButtonWidget({this.onTap, this.buttonLabel});

  final Function onTap;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonLabel,
            style: styleResultButton,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
      ),
    );
  }
}