import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Center(
        child: Container(
          color: Color(0xFF1C1D2F),
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Color(0xFF69EBFF)),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("yes");
          },
        ),
      ),
    );
  }
}
