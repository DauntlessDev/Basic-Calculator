import 'package:calculator/calc_brain.dart';
import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

import 'components/number_button.dart';
import 'components/round_button.dart';
import 'components/symbol_button.dart';

CalculatorBrain calculatorBrain;

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
    calculatorBrain = CalculatorBrain();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Basic Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        calculatorBrain.inputText.toString(),
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '=0',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
              width: 501,
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: kBodyColor,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(0.0),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 4,
                  children: <Widget>[
                    SymbolButton('C'),
                    SymbolButton('⌫'),
                    SymbolButton('%'),
                    SymbolButton('/'),
                    NumberButton(
                      number: '7',
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('7');
                      }),
                    ),
                    NumberButton(number: '8',
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('8');
                      }),),
                    NumberButton(number: '9'),
                    SymbolButton('*'),
                    NumberButton(number: '4'),
                    NumberButton(number: '5'),
                    NumberButton(number: '6'),
                    SymbolButton('-'),
                    NumberButton(number: '1'),
                    NumberButton(number: '2'),
                    NumberButton(number: '3'),
                    SymbolButton('+'),
                    SymbolButton('( )'),
                    NumberButton(number: '0'),
                    NumberButton(number: '.'),
                    RoundButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
