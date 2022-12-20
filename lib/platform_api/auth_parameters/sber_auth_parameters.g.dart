// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sber_auth_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SberAuthSdkAuthParameters _$$_SberAuthSdkAuthParametersFromJson(
        Map<String, dynamic> json) =>
    _$_SberAuthSdkAuthParameters(
      clientId: json['client_id'] as String,
      scope: json['scope'] as String,
      state: json['state'] as String,
      nonce: json['nonce'] as String,
      redirectUrl: json['redirect_url'] as String,
      codeChallenge: json['code_challenge'] == null
          ? null
          : SberAuthCodeChallenge.fromJson(
              json['code_challenge'] as Map<String, dynamic>),
      inCustomTabs: json['in_custom_tabs'] as bool,
    );

Map<String, dynamic> _$$_SberAuthSdkAuthParametersToJson(
        _$_SberAuthSdkAuthParameters instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'scope': instance.scope,
      'state': instance.state,
      'nonce': instance.nonce,
      'redirect_url': instance.redirectUrl,
      'code_challenge': instance.codeChallenge,
      'in_custom_tabs': instance.inCustomTabs,
    };
