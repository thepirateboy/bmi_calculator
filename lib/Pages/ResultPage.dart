import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/IconContent.dart';
import 'package:bmi_calculator/Components/MyContainer.dart';
import 'package:bmi_calculator/Components/Constants.dart';
import 'package:bmi_calculator/Components/BottomBar.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI RESULT"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Center(
              child: Text(
                "Your Result",
                style: c_TitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 50,
            child: MyContainer(
              colorChoice: c_CardNormalColor,
              containerChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "ttt",
                    style: c_ResultConclusionStyle,
                  ),
                  Text(
                    "20.5",
                    style: c_BmiStyle,
                  ),
                  Text(
                    "your ijfhwginow  nq wfbyagfiuydsg gdd wfewewqre feeww",
                    textAlign: TextAlign.center,
                    style: c_DiagnoseStyle,
                  )
                ],
              ),
            ),
          ),
          bottomBar(
            onTap: () {
              Navigator.pop(context);
            },
            myText: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
