import 'package:flutter_google_wallet/flutter_google_wallet_pigeon.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_plugin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterGoogleWalletPlatform
    with MockPlatformInterfaceMixin
    implements FlutterGoogleWalletPlatform {

  @override
  Future<bool> getWalletApiAvailabilityStatus() {
    // TODO: implement getWalletApiAvailabilityStatus
    throw UnimplementedError();
  }

  @override
  Future<void> initWalletClient() {
    // TODO: implement initWalletClient
    throw UnimplementedError();
  }

  @override
  Future<bool> savePasses({required String jsonPass, required int addToGoogleWalletRequestCode}) {
    // TODO: implement savePasses
    throw UnimplementedError();
  }
}

void main() {
  final FlutterGoogleWalletPlatform initialPlatform = FlutterGoogleWalletPlatform.instance;

  test('$PigeonFlutterGoogleWallet is the default instance', () {
    expect(initialPlatform, isInstanceOf<PigeonFlutterGoogleWallet>());
  });

  test('getPlatformVersion', () async {
    FlutterGoogleWalletPlugin flutterGoogleWalletPlugin = FlutterGoogleWalletPlugin();
    MockFlutterGoogleWalletPlatform fakePlatform = MockFlutterGoogleWalletPlatform();
    FlutterGoogleWalletPlatform.instance = fakePlatform;
  
    //expect(await flutterGoogleWalletPlugin.getPlatformVersion(), '42');
  });
}
