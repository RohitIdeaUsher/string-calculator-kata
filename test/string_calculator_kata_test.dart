import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/string_calulator_kata.dart';

void main() {
  late Calculator calculator;
  setUpAll(() {
    calculator = Calculator();
  });
  group('Calculator', () {
    test('returns 0 for an empty string', () {
      String userInput = "";
      final results = calculator.add(userInput: userInput);
      expect(results, 0);
    });

    test('returns number itself when single number is provided', () {
      String userInput = "1";
      final results = calculator.add(userInput: userInput);
      expect(results, 1);
    });

    test('returns sum when multiple numbers are provided', () {
      String userInput = "3,7";
      final results = calculator.add(userInput: userInput);
      expect(results, 10);
    });
    test('handles new line as a delimiter', () {
      String userInput = "9\n5,6";
      final results = calculator.add(userInput: userInput);
      expect(results, 20);
    });
  });
}
