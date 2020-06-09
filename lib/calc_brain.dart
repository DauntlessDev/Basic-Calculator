

class CalculatorBrain {

  String inputText = "0";
  String input;
  String result;

  void addtoInputText(String buttonString) {
    if (buttonString == 'C') {
      inputText = "";
    } else if (buttonString == '( )') {
      inputText = '(' + inputText + ')';
    } else if (buttonString == '0') {
      inputText = buttonString;
    } else {
      inputText += buttonString;
    }
  }
}
