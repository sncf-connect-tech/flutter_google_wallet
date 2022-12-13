import 'package:flutter_google_wallet/utils/langue_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('GIVEN locale THEN normalizedLocale() return normalized locale', () async {
    expect(normalizedLocale(locale: 'fr'), 'frFR');
    expect(normalizedLocale(locale: 'de'), 'de');
    expect(normalizedLocale(locale: 'en'), 'enGB');
    expect(normalizedLocale(locale: 'it'), 'it');
    expect(normalizedLocale(locale: 'nl'), 'nl');
  });
}
