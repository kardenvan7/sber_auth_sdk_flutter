import 'package:freezed_annotation/freezed_annotation.dart';

import 'code_challenge/sber_auth_code_challenge.dart';

export 'code_challenge/sber_auth_code_challenge.dart';

part 'sber_auth_parameters.freezed.dart';
part 'sber_auth_parameters.g.dart';

@freezed
class SberAuthParameters with _$SberAuthParameters {
  const SberAuthParameters._();

  const factory SberAuthParameters({
    required String clientId,
    required String scope,
    required String state,
    required String nonce,
    required String returnUrl,
    String? customTabsReturnUrl,
    SberAuthCodeChallenge? codeChallenge,
  }) = _SberAuthSdkAuthParameters;

  factory SberAuthParameters.fromJson(Map<String, dynamic> json) =>
      _$SberAuthParametersFromJson(json);
}
