import 'package:flutter_google_wallet/flutter_google_wallet_pigeon.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class FlutterGoogleWalletPlatform extends PlatformInterface {
  /// Constructs a FlutterGoogleWalletPlatform.
  FlutterGoogleWalletPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterGoogleWalletPlatform _instance = PigeonFlutterGoogleWallet();

  /// The default instance of [FlutterGoogleWalletPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterGoogleWallet].
  static FlutterGoogleWalletPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterGoogleWalletPlatform] when
  /// they register themselves.
  static set instance(FlutterGoogleWalletPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> initWalletClient() async {
    throw UnimplementedError('initWalletClient() has not been implemented.');
  }

  Future<bool> getWalletApiAvailabilityStatus() async {
    throw UnimplementedError(
        'getWalletApiAvailabilityStatus() has not been implemented.');
  }

  Future<void> savePasses(
      {required String jsonPass,
      required int addToGoogleWalletRequestCode}) async {
    throw UnimplementedError('savePasses() has not been implemented.');
  }
}
