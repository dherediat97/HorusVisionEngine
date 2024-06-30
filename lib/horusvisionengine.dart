
import 'horusvisionengine_platform_interface.dart';

class Horusvisionengine {
  Future<String?> getPlatformVersion() {
    return HorusvisionenginePlatform.instance.getPlatformVersion();
  }
}
