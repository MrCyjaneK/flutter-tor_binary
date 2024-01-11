import 'tor_binary_platform_interface.dart';

class TorBinary {
  Future<String?> getBinaryPath() {
    return TorBinaryPlatform.instance.getBinaryPath();
  }
}
