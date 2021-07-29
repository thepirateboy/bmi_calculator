import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color colorChoice;
  final Widget containerChild;
  MyContainer({required this.colorChoice, required this.containerChild});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        //width: double.infinity,
        child: containerChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colorChoice,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
