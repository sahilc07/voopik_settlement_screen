import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color buttonColor;

  Button({this.label, this.textColor, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      minWidth: double.infinity,
      height: 40.0,
      elevation: 1.0,
      color: buttonColor,
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.0,
          color: textColor,
        ),
      ),
    );
  }
}
