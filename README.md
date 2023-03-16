# flutter_google_wallet

A Flutter Google Wallet Plugin for tickets

[![pub package](https://img.shields.io/pub/v/flutter_google_wallet.svg)](https://pub.dev/packages/flutter_google_wallet)
[![Test](https://github.com/voyages-sncf-technologies/flutter_google_wallet/actions/workflows/test.yaml/badge.svg)](https://github.com/voyages-sncf-technologies/flutter_google_wallet/actions/workflows/test.yaml)
[![codecov](https://codecov.io/gh/voyages-sncf-technologies/flutter_google_wallet/branch/main/graph/badge.svg)](https://codecov.io/gh/voyages-sncf-technologies/flutter_google_wallet)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Features

* Enable and check if wallet is available
* Add ticket or anything to wallet

## Usage

### Basic example

Create a FlutterGoogleWalletPlugin instance in your app.

```dart
final flutterGoogleWalletPlugin = FlutterGoogleWalletPlugin();
```

Then, call initWalletClient to create the Wallet instance on Android when you need it in your app.

```dart
flutterGoogleWalletPlugin.initWalletClient();
```

Before display the button, call getWalletApiAvailabilityStatus to know if the device has the wallet app.

```dart
FutureBuilder<bool>(
  future: flutterGoogleWalletPlugin.getWalletApiAvailabilityStatus(),
```

Finally, display the button and call savePasses to save ticket in GoogleWallet.

```dart
FutureBuilder<bool>(
  future: flutterGoogleWalletPlugin.getWalletApiAvailabilityStatus(),
  builder: (BuildContext context, AsyncSnapshot<bool> available) {
    if (available.data ?? false) {
      return AddToGoogleWalletButton(
        locale: Locale('en', 'US'),
        onPress: () {
          widget.flutterGoogleWalletPlugin.savePasses(
            jsonPass: '',
            addToGoogleWalletRequestCode: 2);
        });
    } else {
      return const SizedBox.shrink();
    }
  },
),
```

Also add the google wallet button svg to your pubspec assets

```yaml
  assets:
    - packages/flutter_google_wallet/assets/svg/button/frFR_add_to_google_wallet_wallet-button.svg
    - packages/flutter_google_wallet/assets/svg/button/enUS_add_to_google_wallet_wallet-button.svg
```

And add the wallet localization to your MaterialApp

```dart
  localizationsDelegates: const [
    I18nGoogleWallet.delegate,
  ],
```
