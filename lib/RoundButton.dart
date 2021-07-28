import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  //const RoundButton({Key? key}) : super(key: key);

  final IconData myIcon;
  final VoidCallback onPressed;

  RoundButton({required this.myIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(myIcon),
      shape: CircleBorder(),
      // RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(10),
      fillColor: Color(0xFF4B4B5C),
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
    );
  }
}
