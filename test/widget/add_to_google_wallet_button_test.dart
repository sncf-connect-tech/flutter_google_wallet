import 'package:flutter/material.dart';
import 'package:flutter_google_wallet/generated/l10n.dart';
import 'package:flutter_google_wallet/utils/locale_utils.dart';
import 'package:flutter_google_wallet/widget/add_to_google_wallet_button.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await loadAppFonts();
  });

  Widget buildWidgetFromLocale(Locale locale) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: Text(locale.toLanguageTag()),
            ),
            Expanded(
              child: AddToGoogleWalletButton(
                locale: locale,
                useInternalAssetPackage: true,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: AddToGoogleWalletButton(
                locale: locale,
                useInternalAssetPackage: true,
                buttonType: GoogleWalletButtonType.condensed,
              ),
            ),
          ],
        ),
      );

  testGoldens('Weather types should look correct', (tester) async {
    await tester.pumpWidgetBuilder(
      SingleChildScrollView(
        child: Column(
          children: [
            ...validAssetLocaleSet
                .map((locale) => buildWidgetFromLocale(locale))
                .expand((widget) => [widget, const SizedBox(height: 8.0)]),
            // this one should fall back to en-US, since 'oc' is not a supported language
            buildWidgetFromLocale(const Locale('oc')),
          ],
        ),
      ),
      wrapper: materialAppWrapper(localizations: [I18nGoogleWallet.delegate]),
    );
    await screenMatchesGolden(tester, 'google_wallet', autoHeight: true);
  });
}
