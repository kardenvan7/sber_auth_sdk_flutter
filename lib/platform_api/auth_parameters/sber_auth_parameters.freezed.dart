// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sber_auth_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SberAuthParameters _$SberAuthParametersFromJson(Map<String, dynamic> json) {
  return _SberAuthSdkAuthParameters.fromJson(json);
}

/// @nodoc
mixin _$SberAuthParameters {
  String get redirectUrl => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  bool get inCustomTabs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SberAuthParametersCopyWith<SberAuthParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SberAuthParametersCopyWith<$Res> {
  factory $SberAuthParametersCopyWith(
          SberAuthParameters value, $Res Function(SberAuthParameters) then) =
      _$SberAuthParametersCopyWithImpl<$Res, SberAuthParameters>;
  @useResult
  $Res call(
      {String redirectUrl, String clientId, String scope, bool inCustomTabs});
}

/// @nodoc
class _$SberAuthParametersCopyWithImpl<$Res, $Val extends SberAuthParameters>
    implements $SberAuthParametersCopyWith<$Res> {
  _$SberAuthParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = null,
    Object? clientId = null,
    Object? scope = null,
    Object? inCustomTabs = null,
  }) {
    return _then(_value.copyWith(
      redirectUrl: null == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      inCustomTabs: null == inCustomTabs
          ? _value.inCustomTabs
          : inCustomTabs // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SberAuthSdkAuthParametersCopyWith<$Res>
    implements $SberAuthParametersCopyWith<$Res> {
  factory _$$_SberAuthSdkAuthParametersCopyWith(
          _$_SberAuthSdkAuthParameters value,
          $Res Function(_$_SberAuthSdkAuthParameters) then) =
      __$$_SberAuthSdkAuthParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String redirectUrl, String clientId, String scope, bool inCustomTabs});
}

/// @nodoc
class __$$_SberAuthSdkAuthParametersCopyWithImpl<$Res>
    extends _$SberAuthParametersCopyWithImpl<$Res, _$_SberAuthSdkAuthParameters>
    implements _$$_SberAuthSdkAuthParametersCopyWith<$Res> {
  __$$_SberAuthSdkAuthParametersCopyWithImpl(
      _$_SberAuthSdkAuthParameters _value,
      $Res Function(_$_SberAuthSdkAuthParameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = null,
    Object? clientId = null,
    Object? scope = null,
    Object? inCustomTabs = null,
  }) {
    return _then(_$_SberAuthSdkAuthParameters(
      redirectUrl: null == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      inCustomTabs: null == inCustomTabs
          ? _value.inCustomTabs
          : inCustomTabs // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SberAuthSdkAuthParameters extends _SberAuthSdkAuthParameters {
  const _$_SberAuthSdkAuthParameters(
      {required this.redirectUrl,
      required this.clientId,
      required this.scope,
      required this.inCustomTabs})
      : super._();

  factory _$_SberAuthSdkAuthParameters.fromJson(Map<String, dynamic> json) =>
      _$$_SberAuthSdkAuthParametersFromJson(json);

  @override
  final String redirectUrl;
  @override
  final String clientId;
  @override
  final String scope;
  @override
  final bool inCustomTabs;

  @override
  String toString() {
    return 'SberAuthParameters(redirectUrl: $redirectUrl, clientId: $clientId, scope: $scope, inCustomTabs: $inCustomTabs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SberAuthSdkAuthParameters &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.inCustomTabs, inCustomTabs) ||
                other.inCustomTabs == inCustomTabs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, redirectUrl, clientId, scope, inCustomTabs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SberAuthSdkAuthParametersCopyWith<_$_SberAuthSdkAuthParameters>
      get copyWith => __$$_SberAuthSdkAuthParametersCopyWithImpl<
          _$_SberAuthSdkAuthParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SberAuthSdkAuthParametersToJson(
      this,
    );
  }
}

abstract class _SberAuthSdkAuthParameters extends SberAuthParameters {
  const factory _SberAuthSdkAuthParameters(
      {required final String redirectUrl,
      required final String clientId,
      required final String scope,
      required final bool inCustomTabs}) = _$_SberAuthSdkAuthParameters;
  const _SberAuthSdkAuthParameters._() : super._();

  factory _SberAuthSdkAuthParameters.fromJson(Map<String, dynamic> json) =
      _$_SberAuthSdkAuthParameters.fromJson;

  @override
  String get redirectUrl;
  @override
  String get clientId;
  @override
  String get scope;
  @override
  bool get inCustomTabs;
  @override
  @JsonKey(ignore: true)
  _$$_SberAuthSdkAuthParametersCopyWith<_$_SberAuthSdkAuthParameters>
      get copyWith => throw _privateConstructorUsedError;
}
