import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sber_auth_sdk_flutter/sber_auth_sdk_flutter_method_channel.dart';

void main() {
  MethodChannelSberAuthSdkFlutter platform = MethodChannelSberAuthSdkFlutter();
  const MethodChannel channel = MethodChannel('sber_auth_sdk_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
