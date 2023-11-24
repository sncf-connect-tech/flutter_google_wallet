import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class GoogleWalletApi {
  void initWalletClient();

  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  bool getWalletApiAvailabilityStatus();

  void savePasses(String jsonPass, int addToGoogleWalletRequestCode);

  void savePassesJwt(String jsonPass, int addToGoogleWalletRequestCode);
}
