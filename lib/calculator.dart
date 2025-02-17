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
    List<int?> result = userInput.split(delimiter).map(int.tryParse).toList();
    if (result.isNotEmpty) {
      throw ArgumentError("Negatives not allowed: ${result.join(', ')}");
    }

    return result.fold(0, (sum, number) => (sum ?? 0) + (number ?? 0));
  }
}
