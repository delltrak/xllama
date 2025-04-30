import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'xllama_platform_interface.dart';

/// An implementation of [XllamaPlatform] that uses method channels.
class MethodChannelXllama extends XllamaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('xllama');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
