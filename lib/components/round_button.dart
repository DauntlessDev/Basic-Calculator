import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
          fit: BoxFit.contain,
          child: RawMaterialButton(
          onPressed: () { print('e');},
          fillColor: kAccentColor,
          shape: CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '=',
              style: TextStyle(
                  color: kWhiteColor, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
