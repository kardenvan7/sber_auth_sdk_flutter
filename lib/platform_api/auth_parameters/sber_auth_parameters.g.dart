// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sber_auth_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SberAuthSdkAuthParameters _$$_SberAuthSdkAuthParametersFromJson(
        Map<String, dynamic> json) =>
    _$_SberAuthSdkAuthParameters(
      redirectUrl: json['redirect_url'] as String,
      clientId: json['client_id'] as String,
      inCustomTabs: json['in_custom_tabs'] as bool,
    );

Map<String, dynamic> _$$_SberAuthSdkAuthParametersToJson(
        _$_SberAuthSdkAuthParameters instance) =>
    <String, dynamic>{
      'redirect_url': instance.redirectUrl,
      'client_id': instance.clientId,
      'in_custom_tabs': instance.inCustomTabs,
    };
