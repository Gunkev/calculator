import 'package:flutter/material.dart';
import 'package:bmi_app/screens/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //custom theme
      theme: ThemeData(
        primaryColor: Color(0xff181740),
        accentColor: Color(0xff141a38),
        scaffoldBackgroundColor: Color(0xff181740),
        textTheme: TextTheme(body1: TextStyle(color: Color(0xfffffffff))),
      ),
      home: MyHomePage(),

    );
  }
}


