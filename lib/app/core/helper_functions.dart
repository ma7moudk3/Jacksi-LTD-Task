
String stripHtml(String text) {
  // This function is used to remove html tags from the text
  return text.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ');
}

bool detectLang({required String text}) {
  // String pattern = r'^(?:[a-zA-Z]|\P{L})+$';
  String pattern = r'^(?:[a-zA-Z.,;:!?]|\P{L})+$';
  RegExp regex = RegExp(pattern, unicode: true);
  return regex.hasMatch(text);
}
