import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'horusvisionengine_platform_interface.dart';

/// An implementation of [HorusvisionenginePlatform] that uses method channels.
class MethodChannelHorusvisionengine extends HorusvisionenginePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('horusvisionengine');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
