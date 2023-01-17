import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:sber_auth_sdk_flutter/sber_auth_sdk_flutter.dart';

class MockSberAuthSdkFlutterPlatform
    with MockPlatformInterfaceMixin
    implements SberAuthSdkFlutterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> authorizeWithSberId(
    SberAuthParameters parameters,
  ) async =>
      Future.delayed(
        const Duration(seconds: 1),
      );
}

void main() {
  final SberAuthSdkFlutterPlatform initialPlatform =
      SberAuthSdkFlutterPlatform.instance;

  test('$MethodChannelSberAuthSdkFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSberAuthSdkFlutter>());
  });

  test('getPlatformVersion', () async {
    SberAuthSdkFlutter sberAuthSdkFlutterPlugin = SberAuthSdkFlutter();
    MockSberAuthSdkFlutterPlatform fakePlatform =
        MockSberAuthSdkFlutterPlatform();
    SberAuthSdkFlutterPlatform.instance = fakePlatform;

    expect(await sberAuthSdkFlutterPlugin.getPlatformVersion(), '42');
  });
}
