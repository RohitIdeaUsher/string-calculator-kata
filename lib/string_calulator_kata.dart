class Calculator {
  int? add({required String userInput}) {
    if (userInput.isEmpty) return 0;
    return int.tryParse(userInput);
  }
}
