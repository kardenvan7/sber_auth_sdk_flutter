import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sber_auth_sdk_flutter/platform_api/auth_parameters/sber_auth_parameters.dart';
import 'package:sber_auth_sdk_flutter/platform_api/button_parameters/view_parameters/sber_id_login_button_view_parameters.dart';

part 'sber_id_login_button_parameters.freezed.dart';
part 'sber_id_login_button_parameters.g.dart';

@freezed
class SberIdLoginButtonParameters with _$SberIdLoginButtonParameters {
  const SberIdLoginButtonParameters._();

  const factory SberIdLoginButtonParameters({
    required SberAuthParameters authParameters,
    required SberIdLoginButtonViewParameters viewParameters,
  }) = _SberIdLoginButtonParameters;

  factory SberIdLoginButtonParameters.fromJson(Map<String, dynamic> json) =>
      _$SberIdLoginButtonParametersFromJson(json);
}
