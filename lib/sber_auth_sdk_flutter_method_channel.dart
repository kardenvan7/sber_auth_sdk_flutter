import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sber_auth_sdk_flutter/platform_api/auth_parameters/sber_auth_parameters.dart';

import 'sber_auth_sdk_flutter_platform_interface.dart';

/// An implementation of [SberAuthSdkFlutterPlatform] that uses method channels.
class MethodChannelSberAuthSdkFlutter extends SberAuthSdkFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sber_auth_sdk_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> authorizeWithSberId(SberAuthParameters parameters) async {
    await methodChannel.invokeMethod(
      'authorizeWithSberId',
      parameters.toJson(),
    );
  }
}
