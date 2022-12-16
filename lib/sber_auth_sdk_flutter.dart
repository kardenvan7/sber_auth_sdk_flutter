import 'package:sber_auth_sdk_flutter/platform_api/auth_parameters/sber_auth_parameters.dart';

import 'sber_auth_sdk_flutter_platform_interface.dart';

class SberAuthSdkFlutter {
  final platformInstance = SberAuthSdkFlutterPlatform.instance;

  Future<String?> getPlatformVersion() {
    return platformInstance.getPlatformVersion();
  }

  Future<void> authorizeWithSberId(SberAuthParameters parameters) {
    return platformInstance.authorizeWithSberId(parameters);
  }
}
