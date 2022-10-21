/// Utility class for generating article metadata.
class Metadata {
  /// Generates a sorted map of word frequency from an article's content.
  /// (removes all non-alpha from each word)
  static Map<String, int> generateWordFrequency(String content) {
    final strippedWords = content
        .trim()
        .split(RegExp('[ \n\t\r\f]'))
        .map((w) => w.toLowerCase().replaceAll(RegExp('[^A-Za-z]'), ''))
        .toList()
      ..removeWhere((w) => w.isEmpty);

    final unsortedFrequencies = <String, int>{};
    for (final word in strippedWords) {
      unsortedFrequencies.update(word, (count) => count + 1, ifAbsent: () => 1);
    }
    return Map.fromEntries(
      unsortedFrequencies.entries.toList()
        ..sort((e1, e2) => e2.value.compareTo(e1.value)),
    );
  }
}
