// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sber_id_login_button_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SberIdLoginButtonParameters _$SberIdLoginButtonParametersFromJson(
    Map<String, dynamic> json) {
  return _SberIdLoginButtonParameters.fromJson(json);
}

/// @nodoc
mixin _$SberIdLoginButtonParameters {
  SberAuthParameters get authParameters => throw _privateConstructorUsedError;
  SberIdLoginButtonViewParameters get viewParameters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SberIdLoginButtonParametersCopyWith<SberIdLoginButtonParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SberIdLoginButtonParametersCopyWith<$Res> {
  factory $SberIdLoginButtonParametersCopyWith(
          SberIdLoginButtonParameters value,
          $Res Function(SberIdLoginButtonParameters) then) =
      _$SberIdLoginButtonParametersCopyWithImpl<$Res,
          SberIdLoginButtonParameters>;
  @useResult
  $Res call(
      {SberAuthParameters authParameters,
      SberIdLoginButtonViewParameters viewParameters});

  $SberAuthParametersCopyWith<$Res> get authParameters;
  $SberIdLoginButtonViewParametersCopyWith<$Res> get viewParameters;
}

/// @nodoc
class _$SberIdLoginButtonParametersCopyWithImpl<$Res,
        $Val extends SberIdLoginButtonParameters>
    implements $SberIdLoginButtonParametersCopyWith<$Res> {
  _$SberIdLoginButtonParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authParameters = null,
    Object? viewParameters = null,
  }) {
    return _then(_value.copyWith(
      authParameters: null == authParameters
          ? _value.authParameters
          : authParameters // ignore: cast_nullable_to_non_nullable
              as SberAuthParameters,
      viewParameters: null == viewParameters
          ? _value.viewParameters
          : viewParameters // ignore: cast_nullable_to_non_nullable
              as SberIdLoginButtonViewParameters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SberAuthParametersCopyWith<$Res> get authParameters {
    return $SberAuthParametersCopyWith<$Res>(_value.authParameters, (value) {
      return _then(_value.copyWith(authParameters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SberIdLoginButtonViewParametersCopyWith<$Res> get viewParameters {
    return $SberIdLoginButtonViewParametersCopyWith<$Res>(_value.viewParameters,
        (value) {
      return _then(_value.copyWith(viewParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SberIdLoginButtonParametersCopyWith<$Res>
    implements $SberIdLoginButtonParametersCopyWith<$Res> {
  factory _$$_SberIdLoginButtonParametersCopyWith(
          _$_SberIdLoginButtonParameters value,
          $Res Function(_$_SberIdLoginButtonParameters) then) =
      __$$_SberIdLoginButtonParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SberAuthParameters authParameters,
      SberIdLoginButtonViewParameters viewParameters});

  @override
  $SberAuthParametersCopyWith<$Res> get authParameters;
  @override
  $SberIdLoginButtonViewParametersCopyWith<$Res> get viewParameters;
}

/// @nodoc
class __$$_SberIdLoginButtonParametersCopyWithImpl<$Res>
    extends _$SberIdLoginButtonParametersCopyWithImpl<$Res,
        _$_SberIdLoginButtonParameters>
    implements _$$_SberIdLoginButtonParametersCopyWith<$Res> {
  __$$_SberIdLoginButtonParametersCopyWithImpl(
      _$_SberIdLoginButtonParameters _value,
      $Res Function(_$_SberIdLoginButtonParameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authParameters = null,
    Object? viewParameters = null,
  }) {
    return _then(_$_SberIdLoginButtonParameters(
      authParameters: null == authParameters
          ? _value.authParameters
          : authParameters // ignore: cast_nullable_to_non_nullable
              as SberAuthParameters,
      viewParameters: null == viewParameters
          ? _value.viewParameters
          : viewParameters // ignore: cast_nullable_to_non_nullable
              as SberIdLoginButtonViewParameters,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SberIdLoginButtonParameters extends _SberIdLoginButtonParameters {
  const _$_SberIdLoginButtonParameters(
      {required this.authParameters, required this.viewParameters})
      : super._();

  factory _$_SberIdLoginButtonParameters.fromJson(Map<String, dynamic> json) =>
      _$$_SberIdLoginButtonParametersFromJson(json);

  @override
  final SberAuthParameters authParameters;
  @override
  final SberIdLoginButtonViewParameters viewParameters;

  @override
  String toString() {
    return 'SberIdLoginButtonParameters(authParameters: $authParameters, viewParameters: $viewParameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SberIdLoginButtonParameters &&
            (identical(other.authParameters, authParameters) ||
                other.authParameters == authParameters) &&
            (identical(other.viewParameters, viewParameters) ||
                other.viewParameters == viewParameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authParameters, viewParameters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SberIdLoginButtonParametersCopyWith<_$_SberIdLoginButtonParameters>
      get copyWith => __$$_SberIdLoginButtonParametersCopyWithImpl<
          _$_SberIdLoginButtonParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SberIdLoginButtonParametersToJson(
      this,
    );
  }
}

abstract class _SberIdLoginButtonParameters
    extends SberIdLoginButtonParameters {
  const factory _SberIdLoginButtonParameters(
          {required final SberAuthParameters authParameters,
          required final SberIdLoginButtonViewParameters viewParameters}) =
      _$_SberIdLoginButtonParameters;
  const _SberIdLoginButtonParameters._() : super._();

  factory _SberIdLoginButtonParameters.fromJson(Map<String, dynamic> json) =
      _$_SberIdLoginButtonParameters.fromJson;

  @override
  SberAuthParameters get authParameters;
  @override
  SberIdLoginButtonViewParameters get viewParameters;
  @override
  @JsonKey(ignore: true)
  _$$_SberIdLoginButtonParametersCopyWith<_$_SberIdLoginButtonParameters>
      get copyWith => throw _privateConstructorUsedError;
}
