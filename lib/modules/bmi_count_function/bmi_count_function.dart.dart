import 'dart:math';

class CalfunctionS {
  CalfunctionS({this.weight, this.height});
  final int height;
  final int weight;
  double _health;

  String calculation() {
    _health = weight / pow(height / 100, 2);
    return _health.toStringAsFixed(1);
  }

  String getresult() {
    if (_health >= 30) {
      return 'Obese';
    } else if (_health >= 25 || _health < 30) {
      return 'Overweight';
    } else if (_health >= 18.5 || _health <= 25) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getadvise() {
    if (_health > 30) {
      return 'You are going through obesity , must maintain your diet ';
    } else if (_health >= 25 || _health < 30) {
      return 'You have overweight than normal body ,suggested to do excercise';
    } else if (_health >= 18.5 || _health <= 25) {
      return 'good job! you have a normal body weight';
    } else {
      return 'You are underweight, advisable to eat more';
    }
  }
}
