class Regex {
  static final delimiter = RegExp("[,\n\s\$!#@%^&*()_+=<>?/;:\-\_a-zA-Z]");
  // RegExp testLimiter = RegExp("[,\n\s!@#%^&*()_+=\[\]{}|;:'\"<>?/\\\$-]");
  static RegExp customDelimiter(String source) => RegExp(source);
}
