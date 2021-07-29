import 'dart:math';

class TheCalculator {
  final weight;
  final height;
  late double _bmi;

  TheCalculator({required this.weight, required this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getDiagnose() {
    if (_bmi >= 25) {
      return "diet!";
    } else if (_bmi > 18.5) {
      return "nice";
    } else {
      return "eat more!";
    }
  }
}
