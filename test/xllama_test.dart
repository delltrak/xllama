import 'package:flutter_test/flutter_test.dart';
import 'package:xllama/xllama.dart';
import 'package:xllama/xllama_platform_interface.dart';
import 'package:xllama/xllama_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockXllamaPlatform
    with MockPlatformInterfaceMixin
    implements XllamaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final XllamaPlatform initialPlatform = XllamaPlatform.instance;

  test('$MethodChannelXllama is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelXllama>());
  });

  test('getPlatformVersion', () async {
    Xllama xllamaPlugin = Xllama();
    MockXllamaPlatform fakePlatform = MockXllamaPlatform();
    XllamaPlatform.instance = fakePlatform;

    expect(await xllamaPlugin.getPlatformVersion(), '42');
  });
}
