import 'package:flutter/material.dart';
import 'package:flutter_google_wallet/widget/add_to_google_wallet_button.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_google_wallet/generated/l10n.dart';

void main() {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: AddtoGoogleWalletButton(langue: 'fr', removeSvgPackage: true),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        I18nGoogleWallet.delegate
      ],
    ));
    await tester.pumpAndSettle();
    await expectLater(
        find.byType(MaterialApp), matchesGoldenFile('google_wallet.png'));
  });
}
