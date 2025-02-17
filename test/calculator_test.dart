import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/calculator.dart';

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

    test('handles multiple delimiters', () {
      String userInput = "//;\n1;2";
      final results = calculator.add(userInput: userInput);
      expect(results, 3);
    });
    test('handles negative numbers', () {
      String userInput = "-1,-3";
      final results = calculator.add(userInput: userInput);
      expect(results, throwsA(isA<ArgumentError>()));
    });
  });
}
