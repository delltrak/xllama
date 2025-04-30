
import 'xllama_platform_interface.dart';

class Xllama {
  Future<String?> getPlatformVersion() {
    return XllamaPlatform.instance.getPlatformVersion();
  }
}
