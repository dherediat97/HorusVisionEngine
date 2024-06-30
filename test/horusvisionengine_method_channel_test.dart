import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:horusvisionengine/horusvisionengine_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelHorusvisionengine platform = MethodChannelHorusvisionengine();
  const MethodChannel channel = MethodChannel('horusvisionengine');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
