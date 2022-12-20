import 'package:freezed_annotation/freezed_annotation.dart';

part 'sber_auth_parameters.freezed.dart';
part 'sber_auth_parameters.g.dart';

@freezed
class SberAuthParameters with _$SberAuthParameters {
  const SberAuthParameters._();

  const factory SberAuthParameters({
    required String redirectUrl,
    required String clientId,
    required bool inCustomTabs,
  }) = _SberAuthSdkAuthParameters;

  factory SberAuthParameters.fromJson(Map<String, dynamic> json) =>
      _$SberAuthParametersFromJson(json);
}
