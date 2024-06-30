import 'package:flutter_test/flutter_test.dart';
import 'package:horusvisionengine/horusvisionengine.dart';
import 'package:horusvisionengine/horusvisionengine_platform_interface.dart';
import 'package:horusvisionengine/horusvisionengine_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHorusvisionenginePlatform
    with MockPlatformInterfaceMixin
    implements HorusvisionenginePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HorusvisionenginePlatform initialPlatform = HorusvisionenginePlatform.instance;

  test('$MethodChannelHorusvisionengine is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHorusvisionengine>());
  });

  test('getPlatformVersion', () async {
    Horusvisionengine horusvisionenginePlugin = Horusvisionengine();
    MockHorusvisionenginePlatform fakePlatform = MockHorusvisionenginePlatform();
    HorusvisionenginePlatform.instance = fakePlatform;

    expect(await horusvisionenginePlugin.getPlatformVersion(), '42');
  });
}
