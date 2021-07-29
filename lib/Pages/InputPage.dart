import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/IconContent.dart';
import 'package:bmi_calculator/Components/MyContainer.dart';
import 'package:bmi_calculator/Components/Constants.dart';
import 'package:bmi_calculator/Components/RoundButton.dart';
import 'package:bmi_calculator/Components/BottomBar.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;

  late Gender selectedGender;

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
                // ------- MALE CARD -------
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
                // ------- FEMALE CARD -------
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
          // ------- HEIGHT CARD -------
          Expanded(
            child: MyContainer(
              colorChoice: c_CardNormalColor,
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: c_LabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: c_BigNumberStyle,
                      ),
                      Text(
                        "cm",
                        style: c_LabelStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: c_BottomColor,
                        overlayColor: c_BottomColor.withOpacity(0.16),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 27)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      //activeColor: c_BottomColor,
                      //inactiveColor: Colors.grey,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ------- 3rd Line of Column -------
          Expanded(
            child: Row(
              children: [
                // ------- WEIGHT CARD -------
                Expanded(
                  child: MyContainer(
                    colorChoice: c_CardNormalColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: c_LabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: c_BigNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //---- Minus button ----
                            RoundButton(
                              myIcon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            //---- Plus button ----
                            RoundButton(
                              myIcon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ------- AGE CARD -------
                Expanded(
                  child: MyContainer(
                    colorChoice: c_CardNormalColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: c_LabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: c_BigNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              myIcon: FontAwesomeIcons.backward,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              myIcon: FontAwesomeIcons.forward,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomBar(
            onTap: () {
              Navigator.pushNamed(context, '/result');
            },
            myText: "CALCULATE",
          ),
        ],
      ),
    );
  }
}
