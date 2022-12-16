import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:sber_auth_sdk_flutter/platform_api/auth_parameters/sber_auth_parameters.dart';

import 'sber_auth_sdk_flutter_method_channel.dart';

abstract class SberAuthSdkFlutterPlatform extends PlatformInterface {
  /// Constructs a SberAuthSdkFlutterPlatform.
  SberAuthSdkFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static SberAuthSdkFlutterPlatform _instance =
      MethodChannelSberAuthSdkFlutter();

  /// The default instance of [SberAuthSdkFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelSberAuthSdkFlutter].
  static SberAuthSdkFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SberAuthSdkFlutterPlatform] when
  /// they register themselves.
  static set instance(SberAuthSdkFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> authorizeWithSberId(SberAuthParameters parameters) {
    throw UnimplementedError('authorizeWithSberId() has not been implemented');
  }
}
