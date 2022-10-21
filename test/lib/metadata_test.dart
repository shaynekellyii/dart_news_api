import 'package:news_server/utilities/utilities.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Metadata', () {
    test('Generate word frequency for empty content', () {
      final frequencies = Metadata.generateWordFrequency('');
      expect(frequencies.isEmpty, isTrue);
    });

    test('Generate word frequency for non-empty content', () {
      final frequencies = Metadata.generateWordFrequency(
        'aaa aaa aaa bb bb c',
      );
      expect(frequencies['aaa'], 3);
      expect(frequencies['bb'], 2);
      expect(frequencies['c'], 1);
    });

    test(
        'Generate word frequency for non-empty content with non-alpha '
        'characters', () {
      final frequencies = Metadata.generateWordFrequency(
        // ignore: unnecessary_string_escapes
        'a\349aa 000 aaa\n aaa   bb2 2b/-b 1c',
      );
      expect(frequencies['aaa'], 3);
      expect(frequencies['bb'], 2);
      expect(frequencies['c'], 1);
      expect(frequencies[000], isNull);
    });
  });
}
