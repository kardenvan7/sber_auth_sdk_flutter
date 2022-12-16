import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sber_auth_sdk_flutter/platform_api/config.dart';

class SberIdLoginButton extends StatefulWidget {
  const SberIdLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SberIdLoginButton> createState() => _SberIdLoginButtonState();
}

class _SberIdLoginButtonState extends State<SberIdLoginButton> {
  String get _viewType => PlatformApiConfig.buttonViewType;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidView(
          viewType: _viewType,
        );

      case TargetPlatform.iOS:
        return UiKitView(
          viewType: _viewType,
        );

      default:
        throw UnimplementedError(
          'SberIdLoginButton is not supported for ${defaultTargetPlatform.name}',
        );
    }
  }
}
