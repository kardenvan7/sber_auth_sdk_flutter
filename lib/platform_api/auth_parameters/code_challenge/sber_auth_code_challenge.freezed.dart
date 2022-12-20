// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sber_auth_code_challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SberAuthCodeChallenge _$SberAuthCodeChallengeFromJson(
    Map<String, dynamic> json) {
  return _SberAuthCodeChallenge.fromJson(json);
}

/// @nodoc
mixin _$SberAuthCodeChallenge {
  String get value => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SberAuthCodeChallengeCopyWith<SberAuthCodeChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SberAuthCodeChallengeCopyWith<$Res> {
  factory $SberAuthCodeChallengeCopyWith(SberAuthCodeChallenge value,
          $Res Function(SberAuthCodeChallenge) then) =
      _$SberAuthCodeChallengeCopyWithImpl<$Res, SberAuthCodeChallenge>;
  @useResult
  $Res call({String value, String method});
}

/// @nodoc
class _$SberAuthCodeChallengeCopyWithImpl<$Res,
        $Val extends SberAuthCodeChallenge>
    implements $SberAuthCodeChallengeCopyWith<$Res> {
  _$SberAuthCodeChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? method = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SberAuthCodeChallengeCopyWith<$Res>
    implements $SberAuthCodeChallengeCopyWith<$Res> {
  factory _$$_SberAuthCodeChallengeCopyWith(_$_SberAuthCodeChallenge value,
          $Res Function(_$_SberAuthCodeChallenge) then) =
      __$$_SberAuthCodeChallengeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String method});
}

/// @nodoc
class __$$_SberAuthCodeChallengeCopyWithImpl<$Res>
    extends _$SberAuthCodeChallengeCopyWithImpl<$Res, _$_SberAuthCodeChallenge>
    implements _$$_SberAuthCodeChallengeCopyWith<$Res> {
  __$$_SberAuthCodeChallengeCopyWithImpl(_$_SberAuthCodeChallenge _value,
      $Res Function(_$_SberAuthCodeChallenge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? method = null,
  }) {
    return _then(_$_SberAuthCodeChallenge(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SberAuthCodeChallenge extends _SberAuthCodeChallenge {
  const _$_SberAuthCodeChallenge({required this.value, required this.method})
      : super._();

  factory _$_SberAuthCodeChallenge.fromJson(Map<String, dynamic> json) =>
      _$$_SberAuthCodeChallengeFromJson(json);

  @override
  final String value;
  @override
  final String method;

  @override
  String toString() {
    return 'SberAuthCodeChallenge(value: $value, method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SberAuthCodeChallenge &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SberAuthCodeChallengeCopyWith<_$_SberAuthCodeChallenge> get copyWith =>
      __$$_SberAuthCodeChallengeCopyWithImpl<_$_SberAuthCodeChallenge>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SberAuthCodeChallengeToJson(
      this,
    );
  }
}

abstract class _SberAuthCodeChallenge extends SberAuthCodeChallenge {
  const factory _SberAuthCodeChallenge(
      {required final String value,
      required final String method}) = _$_SberAuthCodeChallenge;
  const _SberAuthCodeChallenge._() : super._();

  factory _SberAuthCodeChallenge.fromJson(Map<String, dynamic> json) =
      _$_SberAuthCodeChallenge.fromJson;

  @override
  String get value;
  @override
  String get method;
  @override
  @JsonKey(ignore: true)
  _$$_SberAuthCodeChallengeCopyWith<_$_SberAuthCodeChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}
