import 'dart:ui';

import 'package:flutter_google_wallet/utils/locale_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('GIVEN locale THEN toAssetPrefix() returns asset prefix', () async {
    expect(const Locale('fr').toAssetPrefix(), 'frFR');
    expect(const Locale('de').toAssetPrefix(), 'de');
    expect(const Locale('en').toAssetPrefix(), 'enGB');
    expect(const Locale('it').toAssetPrefix(), 'it');
    expect(const Locale('nl').toAssetPrefix(), 'nl');
  });
}
