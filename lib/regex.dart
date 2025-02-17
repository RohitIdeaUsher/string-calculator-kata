class Regex {
  static final delimiter = RegExp("[,\n\s\$!#@%^&*()_+=<>?/;:\-\_a-zA-Z]");

  static RegExp customDelimiter(String source) => RegExp(source);
}
