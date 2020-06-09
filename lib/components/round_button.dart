import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: RawMaterialButton(
          onPressed: this.onPressed,
          fillColor: kAccentColor,
          shape: CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '=',
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
