import 'package:flutter_google_wallet/flutter_google_wallet_pigeon.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_platform_interface.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_plugin.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFlutterGoogleWalletPlatform
    with MockPlatformInterfaceMixin
    implements FlutterGoogleWalletPlatform {
  @override
  Future<bool> getWalletApiAvailabilityStatus() => Future.value(true);

  @override
  Future<void> initWalletClient() => Future.value();

  @override
  Future<void> savePasses(
          {required String jsonPass,
          required int addToGoogleWalletRequestCode}) =>
      Future.value();

  @override
  Future<void> savePassesJwt(
          {required String jsonPass,
          required int addToGoogleWalletRequestCode}) =>
      Future.value();
}

void main() {
  final FlutterGoogleWalletPlatform initialPlatform =
      FlutterGoogleWalletPlatform.instance;

  test('$FlutterGoogleWalletPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<PigeonFlutterGoogleWallet>());
  });

  test('getWalletApiAvailabilityStatus', () async {
    FlutterGoogleWalletPlugin flutterGoogleWalletPlugin =
        FlutterGoogleWalletPlugin();
    MockFlutterGoogleWalletPlatform fakePlatform =
        MockFlutterGoogleWalletPlatform();
    FlutterGoogleWalletPlatform.instance = fakePlatform;

    expect(
        await flutterGoogleWalletPlugin.getWalletApiAvailabilityStatus(), true);
  });
}
