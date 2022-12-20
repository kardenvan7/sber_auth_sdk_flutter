import 'package:sber_auth_sdk_flutter/platform_api/auth_parameters/sber_auth_parameters.dart';

import 'sber_auth_sdk_flutter_platform_interface.dart';

export 'platform_api/platform_api.dart';
export 'widgets/widgets.dart';

class SberAuthSdkFlutter {
  final _platformInstance = SberAuthSdkFlutterPlatform.instance;

  Future<String?> getPlatformVersion() {
    return _platformInstance.getPlatformVersion();
  }

  Future<void> authorizeWithSberId(SberAuthParameters parameters) {
    return _platformInstance.authorizeWithSberId(parameters);
  }
}
