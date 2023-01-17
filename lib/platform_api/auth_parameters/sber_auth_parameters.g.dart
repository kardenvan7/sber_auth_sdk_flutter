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
      returnUrl: json['return_url'] as String,
      customTabsReturnUrl: json['custom_tabs_return_url'] as String?,
      codeChallenge: json['code_challenge'] == null
          ? null
          : SberAuthCodeChallenge.fromJson(
              json['code_challenge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SberAuthSdkAuthParametersToJson(
        _$_SberAuthSdkAuthParameters instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'scope': instance.scope,
      'state': instance.state,
      'nonce': instance.nonce,
      'return_url': instance.returnUrl,
      'custom_tabs_return_url': instance.customTabsReturnUrl,
      'code_challenge': instance.codeChallenge,
    };
