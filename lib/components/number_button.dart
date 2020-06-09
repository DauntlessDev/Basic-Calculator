import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  NumberButton({this.buttonText, this.textStyle, this.onPressed});
  final Function onPressed;
  final String buttonText;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(this.buttonText, style: this.textStyle),
      ),
    );
  }
}
