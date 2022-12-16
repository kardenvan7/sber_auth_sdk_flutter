import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sber_auth_sdk_flutter/platform_api/auth_parameters/sber_auth_parameters.dart';
import 'package:sber_auth_sdk_flutter/platform_api/button_parameters/sber_id_login_button_parameters.dart';
import 'package:sber_auth_sdk_flutter/platform_api/button_parameters/view_parameters/sber_id_login_button_view_parameters.dart';
import 'package:sber_auth_sdk_flutter/platform_api/config.dart';

class SberIdLoginButton extends StatefulWidget {
  const SberIdLoginButton({
    required this.clientId,
    required this.redirectUrl,
    Key? key,
  }) : super(key: key);

  final String clientId;
  final String redirectUrl;

  @override
  State<SberIdLoginButton> createState() => _SberIdLoginButtonState();
}

class _SberIdLoginButtonState extends State<SberIdLoginButton> {
  late SberIdLoginButtonParameters _parameters;

  String get _viewType => PlatformApiConfig.buttonViewType;

  @override
  void initState() {
    super.initState();

    _parameters = SberIdLoginButtonParameters(
      authParameters: SberAuthParameters(
        clientId: widget.clientId,
        redirectUrl: widget.redirectUrl,
      ),
      viewParameters: const SberIdLoginButtonViewParameters(
        type: SberIdLoginButtonViewType.defaultType,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidView(
          viewType: _viewType,
          creationParams: _parameters.toJson(),
        );

      case TargetPlatform.iOS:
        return UiKitView(
          viewType: _viewType,
          creationParams: _parameters.toJson(),
        );

      default:
        throw UnimplementedError(
          'SberIdLoginButton is not supported for ${defaultTargetPlatform.name}',
        );
    }
  }
}
