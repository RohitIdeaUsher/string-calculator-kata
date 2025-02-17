class Calculator {
  int? add({required String userInput}) {
    if (userInput.isEmpty) return 0;
    return userInput
        .split(",")
        .map(int.parse)
        .reduce((previous, next) => previous + next);
  }
}
