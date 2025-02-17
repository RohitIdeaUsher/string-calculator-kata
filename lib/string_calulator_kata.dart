import 'package:string_calculator_kata/regex.dart';

class Calculator {
  int? add({required String userInput}) {
    if (userInput.isEmpty) return 0;
    return userInput
        .split(Regex.delimiter)
        .map(int.parse)
        .reduce((previous, next) => previous + next);
  }
}
