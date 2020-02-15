import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  //constructor
  ReUsableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}
