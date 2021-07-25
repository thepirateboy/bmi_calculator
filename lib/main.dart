import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0C0C1F),
        scaffoldBackgroundColor: Color(0xFF0C0C1F),
        //brightness: Brightness.dark,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
        accentColor: Color(0xFF69EBFF),
      ),
    );
  }
}
