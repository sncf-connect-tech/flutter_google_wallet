import 'package:flutter/services.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_pigeon.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  PigeonFlutterGoogleWallet platform = PigeonFlutterGoogleWallet();
  const MethodChannel channel = MethodChannel('flutter_google_wallet');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  /*test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });*/
}
