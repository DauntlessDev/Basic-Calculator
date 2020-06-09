import 'package:calculator/calc_brain.dart';
import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

import 'components/number_button.dart';
import 'components/round_button.dart';

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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        calculatorBrain.inputText.toString(),
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      Visibility(
                        visible: calculatorBrain.resultText.toString() == 'null' || 
                        calculatorBrain.resultText.toString() == '='
                            ? false
                            : true,
                        child: Text( '=' +
                          calculatorBrain.resultText.toString(),
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end,
                        ),
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
                    NumberButton(
                      buttonText: 'C',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('C');
                      }),
                    ),
                    NumberButton(
                      buttonText: '⌫',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.delete();
                      }),
                    ),
                    NumberButton(
                      buttonText: '%',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.resultText = calculatorBrain.percentageToDecimal();
                      }),
                    ),
                    NumberButton(
                      buttonText: '/',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('/');
                      }),
                    ),
                    NumberButton(
                      buttonText: '7',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('7');
                      }),
                    ),
                    NumberButton(
                      buttonText: '8',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('8');
                      }),
                    ),
                    NumberButton(
                      buttonText: '9',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('9');
                      }),
                    ),
                    NumberButton(
                      buttonText: '*',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('*');
                      }),
                    ),
                    NumberButton(
                      buttonText: '4',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('4');
                      }),
                    ),
                    NumberButton(
                      buttonText: '5',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('5');
                      }),
                    ),
                    NumberButton(
                      buttonText: '6',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('6');
                      }),
                    ),
                    NumberButton(
                      buttonText: '-',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('-');
                      }),
                    ),
                    NumberButton(
                      buttonText: '1',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('1');
                      }),
                    ),
                    NumberButton(
                      buttonText: '2',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('2');
                      }),
                    ),
                    NumberButton(
                      buttonText: '3',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('3');
                      }),
                    ),
                    NumberButton(
                      buttonText: '+',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('+');
                      }),
                    ),
                    NumberButton(
                      buttonText: 'ANS',
                      textStyle: kSymbolStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('ANS');
                      }),
                    ),
                    NumberButton(
                      buttonText: '0',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('0');
                      }),
                    ),
                    NumberButton(
                      buttonText: '.',
                      textStyle: kNumberStyle,
                      onPressed: () => setState(() {
                        calculatorBrain.addtoInputText('.');
                      }),
                    ),
                    RoundButton(
                      onPressed: () => setState(() {
                        calculatorBrain.resultText =
                             calculatorBrain.calculateAll();
                      }),
                    ),
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
