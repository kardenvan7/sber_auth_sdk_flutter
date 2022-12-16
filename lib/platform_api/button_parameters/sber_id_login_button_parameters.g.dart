// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sber_id_login_button_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SberIdLoginButtonParameters _$$_SberIdLoginButtonParametersFromJson(
        Map<String, dynamic> json) =>
    _$_SberIdLoginButtonParameters(
      authParameters: SberAuthParameters.fromJson(
          json['auth_parameters'] as Map<String, dynamic>),
      viewParameters: SberIdLoginButtonViewParameters.fromJson(
          json['view_parameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SberIdLoginButtonParametersToJson(
        _$_SberIdLoginButtonParameters instance) =>
    <String, dynamic>{
      'auth_parameters': instance.authParameters,
      'view_parameters': instance.viewParameters,
    };
