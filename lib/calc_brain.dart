class CalculatorBrain {
  String inputText = "0";
  String resultText;

  int firstnum;
  int secondnum;
  String operatorSymbol;

  void addtoInputText(String buttonString) {
    if (buttonString == 'C') {
      inputText = "";
      resultText = "";
    } else if (buttonString == 'ANS') {
      inputText = inputText + resultText;
    } else if (buttonString == '/' ||
        buttonString == '*' ||
        buttonString == '-' ||
        buttonString == '+') {
      inputText += buttonString;
    } else {
      if (inputText == '0') {
        inputText = buttonString;
      } else {
        inputText += buttonString;
      }
    }
  }

  void delete() {
    inputText = inputText.substring(0, inputText.length - 1);
    if (inputText == "") {
      inputText = '0';
    }
  }

  String percentageToDecimal() {
    String result = "";
    try {
      result = (int.parse(inputText) * .01).toString();
    } catch (e) {
      result = (int.parse(calculateAll()) * .01).toString();
    }
    return result;
  }

  String calculateAll() {
    return calculate(inputText);
  }

  final operators = {
    "+": (a, b) => a + b,
    "-": (a, b) => a - b,
    "*": (a, b) => a * b,
    "/": (a, b) => a / b,
    "%": (a, b) => a % b
  };

  final RegExp expression = new RegExp(
      r"(\d+\.\d+|\d+)(?:\s*)(\+|\-|\*|\/|\%|\^*)(?:\s*)(\d+\.\d+|\d+)");
  final RegExp parens = new RegExp(r"\((.*)\)");

  calculate(String input) {
    if (!expression.hasMatch(input)) {
      return "Error";
    }

    var expr = input;

    expr = expr.replaceAllMapped(parens, (match) => calculate(match[1]));

    while (expression.hasMatch(expr) && num.parse(expr, (s) => null) == null) {
      var match = expression.firstMatch(expr);
      var left = num.parse(match[1]);
      var op = match[2];
      var right = num.parse(match[3]);
      
      expr = expr.replaceAll(match[0], operators[op](left, right).toString());
    }

    return expr.trim();
  }
}
