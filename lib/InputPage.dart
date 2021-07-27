import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'MyContainer.dart';

const bottomHeight = 80.0;
const cardNormalColor = Color(0xFF1C1D2F);
const bottomColor = Color(0xFFEB1555);
const cardPressedColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = cardNormalColor;
  Color femaleCardColor = cardNormalColor;

  void updateColor() {
    //if selected gender is male
    if (selectedGender == Gender.male) {
      if (maleCardColor == cardNormalColor) {
        maleCardColor = cardPressedColor;
        femaleCardColor = cardNormalColor;
      } else {
        maleCardColor = cardNormalColor;
      }
    }
    //if selected gender is female
    if (selectedGender == Gender.female) {
      if (femaleCardColor == cardNormalColor) {
        femaleCardColor = cardPressedColor;
        maleCardColor = cardNormalColor;
      } else {
        femaleCardColor = cardNormalColor;
      }
    }
  }

  late Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        updateColor();
                      });
                    },
                    child: MyContainer(
                      colorChoice: maleCardColor,
                      containerChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        updateColor();
                      });
                    },
                    child: MyContainer(
                      colorChoice: femaleCardColor,
                      containerChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              colorChoice: cardNormalColor,
              containerChild: Column(
                children: [Icon(FontAwesomeIcons.mars)],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    colorChoice: cardNormalColor,
                    containerChild: Column(
                      children: [Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    colorChoice: cardNormalColor,
                    containerChild: Column(
                      children: [Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomHeight,
          )
        ],
      ),
    );
  }
}
