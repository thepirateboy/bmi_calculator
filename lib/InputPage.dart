import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'MyContainer.dart';

const bottomHeight = 80.0;
const cardNormalColor = Color(0xFF1C1D2F);
const bottomColor = Color(0xFFEB1555);
const cardPressedColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = cardNormalColor;
  Color femaleCardColor = cardNormalColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == cardNormalColor) {
        maleCardColor = cardPressedColor;
      } else {
        maleCardColor = cardNormalColor;
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: MyContainer(
                      colorChoice: cardNormalColor,
                      containerChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: "Male",
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: MyContainer(
                      colorChoice: cardNormalColor,
                      containerChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: MyContainer(
                colorChoice: cardNormalColor,
                containerChild: Column(
                  children: [Icon(FontAwesomeIcons.mars)],
                ),
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
      // floatingActionButton: Theme(
      //   data: ThemeData(accentColor: Color(0xFF69EBFF)),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: () {
      //       print("yes");
      //     },
      //   ),
      // ),
    );
  }
}
