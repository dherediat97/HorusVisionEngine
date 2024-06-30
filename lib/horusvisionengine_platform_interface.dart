import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'horusvisionengine_method_channel.dart';

abstract class HorusvisionenginePlatform extends PlatformInterface {
  /// Constructs a HorusvisionenginePlatform.
  HorusvisionenginePlatform() : super(token: _token);

  static final Object _token = Object();

  static HorusvisionenginePlatform _instance = MethodChannelHorusvisionengine();

  /// The default instance of [HorusvisionenginePlatform] to use.
  ///
  /// Defaults to [MethodChannelHorusvisionengine].
  static HorusvisionenginePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HorusvisionenginePlatform] when
  /// they register themselves.
  static set instance(HorusvisionenginePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
