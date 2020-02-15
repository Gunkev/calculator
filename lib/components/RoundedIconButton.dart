import 'package:flutter/material.dart';
import 'package:bmi_app/constant.dart';

// custom round button with icons
class RoundIconButton extends StatelessWidget {
  RoundIconButton({ @required this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: kWhiteColour,),
      onPressed: onPress,
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: kGreyColour,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
