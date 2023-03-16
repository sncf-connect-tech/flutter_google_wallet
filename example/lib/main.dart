import 'package:flutter/material.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_plugin.dart';
import 'package:flutter_google_wallet/generated/l10n.dart';
import 'package:flutter_google_wallet/widget/add_to_google_wallet_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final flutterGoogleWalletPlugin = FlutterGoogleWalletPlugin();

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String _platformVersion = 'Unknown';

  late Future<bool> _isWalletAvailable;

  @override
  void initState() {
    super.initState();
    _isWalletAvailable = Future(() async {
      await widget.flutterGoogleWalletPlugin.initWalletClient();
      return widget.flutterGoogleWalletPlugin.getWalletApiAvailabilityStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [I18nGoogleWallet.delegate],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Running on: $_platformVersion\n'),
              FutureBuilder<bool>(
                future: _isWalletAvailable,
                builder: (BuildContext context, AsyncSnapshot<bool> available) {
                  if (available.data == true) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: AddToGoogleWalletButton(
                          locale: const Locale('fr', 'FR'),
                          onPress: () {
                            widget.flutterGoogleWalletPlugin.savePasses(
                                jsonPass: exampleJsonPass,
                                addToGoogleWalletRequestCode: 2);
                          },
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// This is a pass with fake data, and it will trigger an error when added to Google Wallet
// For a pass with real data, you must follow the Google developer guide here: https://developers.google.com/wallet
const exampleJsonPass = '''
{
  "aud": "google",
  "origins": [
    "https://localhost:8080"
  ],
  "iss": "123456789@developer.gserviceaccount.com",
  "iat": 123456789,
  "typ": "savetowallet",
  "payload": {
    "loyaltyObjects": [
      {
        "barcode": {
          "alternateText": "12345",
          "type": "qrCode",
          "value": "28343E3"
        },
        "id": "123456789.LoyaltyObject",
        "loyaltyPoints": {
          "balance": {
            "string": "500"
          },
          "label": "Points"
        },
        "accountId": "1234567890",
        "classId": "123456789.LoyaltyClass",
        "accountName": "Jane Doe",
        "state": "active",
        "version": 1
      }
    ]
  }
}
''';
