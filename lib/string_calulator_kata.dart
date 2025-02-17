import 'package:string_calculator_kata/regex.dart';

class Calculator {
  int? add({required String userInput}) {
    if (userInput.isEmpty) return 0;
    RegExp delimiter = Regex.delimiter;
    if (userInput.startsWith("//")) {
      var parts = userInput.split("\n");
      delimiter = Regex.customDelimiter(parts[0].substring(2));
      userInput = parts[1];
    }

    return userInput
        .split(delimiter)
        .map(int.tryParse)
        .reduce((a, b) => (a ?? 0) + (b ?? 0));
  }
}
