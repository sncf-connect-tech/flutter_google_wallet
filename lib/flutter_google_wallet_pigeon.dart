import 'package:flutter_google_wallet/messages.dart';

import 'flutter_google_wallet_platform_interface.dart';

class PigeonFlutterGoogleWallet extends FlutterGoogleWalletPlatform {
  static final GoogleWalletApi _api = GoogleWalletApi();

  @override
  Future<void> initWalletClient() async {
    await _api.initWalletClient();
  }

  @override
  Future<bool> getWalletApiAvailabilityStatus() async {
    return await _api.getWalletApiAvailabilityStatus();
  }

  @override
  Future<void> savePasses(
      {required String jsonPass,
      required int addToGoogleWalletRequestCode}) async {
    await _api.savePasses(jsonPass, addToGoogleWalletRequestCode);
  }

  @override
  Future<void> savePassesJwt(
      {required String jsonPass,
      required int addToGoogleWalletRequestCode}) async {
    await _api.savePassesJwt(jsonPass, addToGoogleWalletRequestCode);
  }
}
