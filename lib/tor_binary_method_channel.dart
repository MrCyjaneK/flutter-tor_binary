import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tor_binary_platform_interface.dart';

/// An implementation of [TorBinaryPlatform] that uses method channels.
class MethodChannelTorBinary extends TorBinaryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tor_binary');

  @override
  Future<String?> getBinaryPath() async {
    final version = await methodChannel.invokeMethod<String>('getBinaryPath');
    return version;
  }
}
