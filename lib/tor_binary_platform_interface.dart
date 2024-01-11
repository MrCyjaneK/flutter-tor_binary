import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tor_binary_method_channel.dart';

abstract class TorBinaryPlatform extends PlatformInterface {
  /// Constructs a TorBinaryPlatform.
  TorBinaryPlatform() : super(token: _token);

  static final Object _token = Object();

  static TorBinaryPlatform _instance = MethodChannelTorBinary();

  /// The default instance of [TorBinaryPlatform] to use.
  ///
  /// Defaults to [MethodChannelTorBinary].
  static TorBinaryPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TorBinaryPlatform] when
  /// they register themselves.
  static set instance(TorBinaryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getBinaryPath() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
