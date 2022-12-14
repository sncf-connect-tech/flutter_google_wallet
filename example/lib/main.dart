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

  @override
  void initState() {
    super.initState();
    widget.flutterGoogleWalletPlugin.initWalletClient();
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
                future: widget.flutterGoogleWalletPlugin
                    .getWalletApiAvailabilityStatus(),
                builder: (BuildContext context, AsyncSnapshot<bool> available) {
                  if (available.data ?? false) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: AddtoGoogleWalletButton(
                              langue: 'enUS',
                              onPress: () {
                                widget.flutterGoogleWalletPlugin.savePasses(
                                    jsonPass: '',
                                    addToGoogleWalletRequestCode: 2);
                              })),
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
