import 'flutter_google_wallet_platform_interface.dart';

class FlutterGoogleWalletPlugin {
  Future<void> initWalletClient() async {
    await FlutterGoogleWalletPlatform.instance.initWalletClient();
  }

  Future<bool> getWalletApiAvailabilityStatus() async {
    return await FlutterGoogleWalletPlatform.instance
        .getWalletApiAvailabilityStatus();
  }

  Future<void> savePasses(
      {required String jsonPass,
      required int addToGoogleWalletRequestCode}) async {
    await FlutterGoogleWalletPlatform.instance.savePasses(
        jsonPass: jsonPass,
        addToGoogleWalletRequestCode: addToGoogleWalletRequestCode);
  }
}
