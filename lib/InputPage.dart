import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'MyContainer.dart';
import 'Constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = c_CardNormalColor;
  Color femaleCardColor = c_CardNormalColor;

  void updateColor() {
    //if selected gender is male
    if (selectedGender == Gender.male) {
      if (maleCardColor == c_CardNormalColor) {
        maleCardColor = c_CardPressedColor;
        femaleCardColor = c_CardNormalColor;
      } else {
        maleCardColor = c_CardNormalColor;
      }
    }
    //if selected gender is female
    if (selectedGender == Gender.female) {
      if (femaleCardColor == c_CardNormalColor) {
        femaleCardColor = c_CardPressedColor;
        maleCardColor = c_CardNormalColor;
      } else {
        femaleCardColor = c_CardNormalColor;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  // MALE CARD
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
                  // FEMALE CARD
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
              colorChoice: c_CardNormalColor,
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: c_LabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "180",
                        style: c_BigNumber,
                      ),
                      Text(
                        "cm",
                        style: c_LabelStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    colorChoice: c_CardNormalColor,
                    containerChild: Column(
                      children: [Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    colorChoice: c_CardNormalColor,
                    containerChild: Column(
                      children: [Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: c_BottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: c_BottomHeight,
          )
        ],
      ),
    );
  }
}
