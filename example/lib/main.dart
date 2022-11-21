import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_plugin.dart';
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
  String _platformVersion = 'Unknown';
  final _flutterGoogleWalletPlugin = FlutterGoogleWalletPlugin();

  @override
  void initState() {
    super.initState();
    initPlatformState();
    widget.flutterGoogleWalletPlugin.initWalletClient();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      //platformVersion = await _flutterGoogleWalletPlugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Running on: $_platformVersion\n'),
              FutureBuilder<bool>(
                future: widget.flutterGoogleWalletPlugin.getWalletApiAvailabilityStatus(),
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
