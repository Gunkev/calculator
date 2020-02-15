import 'package:flutter/material.dart';
import 'package:bmi_app/constant.dart';

class ReUsableColIterm extends StatelessWidget {

  // class constructor
  ReUsableColIterm({@required this.textLabel, this.icon});

  final String textLabel;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: kWhiteColour,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textLabel,
          style: styleLabel,
        )
      ],
    );
  }
}