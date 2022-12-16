// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sber_id_login_button_view_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SberIdLoginButtonViewParameters _$$_SberIdLoginButtonViewParametersFromJson(
        Map<String, dynamic> json) =>
    _$_SberIdLoginButtonViewParameters(
      type: const SberIdLoginButtonViewTypeConverter()
          .fromJson(json['button_type'] as String),
    );

Map<String, dynamic> _$$_SberIdLoginButtonViewParametersToJson(
        _$_SberIdLoginButtonViewParameters instance) =>
    <String, dynamic>{
      'button_type':
          const SberIdLoginButtonViewTypeConverter().toJson(instance.type),
    };
