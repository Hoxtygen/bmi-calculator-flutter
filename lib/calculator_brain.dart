import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    print(_bmi.toStringAsFixed(1));
    return _bmi.toStringAsFixed(1);
  }

  String getResult(String bmi) {
    _bmi = double.parse(bmi);
    if (_bmi >= 25) {
      print(_bmi);
      return "Overweight";
    } else if (_bmi >= 18.5) {
      print(_bmi);
      return "Normal";
    } else {
      print(_bmi);
      return "Underweight";
    }
  }

  String getInterpretation(String bmi) {
    _bmi = double.parse(bmi);
    if (_bmi >= 25) {
      print(_bmi);
      return "You have a higher than normal body weight. Try to exercise more";
    } else if (_bmi >= 18.5) {
      print(_bmi);
      return "You have a normal body weight. Good job!";
    } else {
      print(_bmi);
      return "You have a lower than normal body weight. You need to eat more.";
    }
  }
}
