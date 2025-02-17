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
  });
}
