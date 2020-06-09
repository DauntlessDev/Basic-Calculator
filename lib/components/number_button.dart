
import 'package:flutter/material.dart';

import '../constants.dart';

class NumberButton extends StatelessWidget {
  NumberButton({this.number, this.onPressed});
  final Function onPressed;
  final String number;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          this.number.toString(),
          style: TextStyle(
              color: kWhiteColor, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
