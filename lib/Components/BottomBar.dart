import 'package:flutter/material.dart';
import 'Constants.dart';

class bottomBar extends StatelessWidget {
  final VoidCallback onTap;
  final String myText;

  bottomBar({required this.onTap, required this.myText});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          color: c_BottomColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: c_BottomHeight,
          child: Text(
            myText,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // padding: EdgeInsets.all(double.infinity),
          padding: EdgeInsets.only(bottom: 18),
        ),
        onTap: onTap,
        splashColor: Colors.amber,
      ),
    );
  }
}
