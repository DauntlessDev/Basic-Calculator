
import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class SymbolButton extends StatelessWidget {
  SymbolButton(this.symbol);

  final String symbol;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
          onPressed: () { print('yes'); },
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(symbol,
            style: kSymbolStyle, textAlign: TextAlign.center),
      ),
    );
  }
}