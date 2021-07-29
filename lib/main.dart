import 'package:flutter/material.dart';
import 'Components/Constants.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Pages/InputPage.dart';
import 'Pages/ResultPage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: InputPage(),
      initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            thumbColor: c_BottomColor,
            overlayColor: c_BottomColor.withOpacity(0.16),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 27)),
        primaryColor: Color(0xFF0C0C1F),
        scaffoldBackgroundColor: Color(0xFF0C0C1F),
        //brightness: Brightness.dark,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
        accentColor: Color(0xFF69EBFF),
      ),
      routes: {
        '/': (context) => InputPage(),
        //'/result': (context) => ResultPage(),
      },
    );
  }
}
