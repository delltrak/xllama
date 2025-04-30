import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'xllama_method_channel.dart';

abstract class XllamaPlatform extends PlatformInterface {
  /// Constructs a XllamaPlatform.
  XllamaPlatform() : super(token: _token);

  static final Object _token = Object();

  static XllamaPlatform _instance = MethodChannelXllama();

  /// The default instance of [XllamaPlatform] to use.
  ///
  /// Defaults to [MethodChannelXllama].
  static XllamaPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XllamaPlatform] when
  /// they register themselves.
  static set instance(XllamaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
