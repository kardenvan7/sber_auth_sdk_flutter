// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sber_id_login_button_view_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SberIdLoginButtonViewParameters _$SberIdLoginButtonViewParametersFromJson(
    Map<String, dynamic> json) {
  return _SberIdLoginButtonViewParameters.fromJson(json);
}

/// @nodoc
mixin _$SberIdLoginButtonViewParameters {
  @JsonKey(name: "button_type")
  @SberIdLoginButtonViewTypeConverter()
  SberIdLoginButtonViewType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SberIdLoginButtonViewParametersCopyWith<SberIdLoginButtonViewParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SberIdLoginButtonViewParametersCopyWith<$Res> {
  factory $SberIdLoginButtonViewParametersCopyWith(
          SberIdLoginButtonViewParameters value,
          $Res Function(SberIdLoginButtonViewParameters) then) =
      _$SberIdLoginButtonViewParametersCopyWithImpl<$Res,
          SberIdLoginButtonViewParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: "button_type")
      @SberIdLoginButtonViewTypeConverter()
          SberIdLoginButtonViewType type});
}

/// @nodoc
class _$SberIdLoginButtonViewParametersCopyWithImpl<$Res,
        $Val extends SberIdLoginButtonViewParameters>
    implements $SberIdLoginButtonViewParametersCopyWith<$Res> {
  _$SberIdLoginButtonViewParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SberIdLoginButtonViewType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SberIdLoginButtonViewParametersCopyWith<$Res>
    implements $SberIdLoginButtonViewParametersCopyWith<$Res> {
  factory _$$_SberIdLoginButtonViewParametersCopyWith(
          _$_SberIdLoginButtonViewParameters value,
          $Res Function(_$_SberIdLoginButtonViewParameters) then) =
      __$$_SberIdLoginButtonViewParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "button_type")
      @SberIdLoginButtonViewTypeConverter()
          SberIdLoginButtonViewType type});
}

/// @nodoc
class __$$_SberIdLoginButtonViewParametersCopyWithImpl<$Res>
    extends _$SberIdLoginButtonViewParametersCopyWithImpl<$Res,
        _$_SberIdLoginButtonViewParameters>
    implements _$$_SberIdLoginButtonViewParametersCopyWith<$Res> {
  __$$_SberIdLoginButtonViewParametersCopyWithImpl(
      _$_SberIdLoginButtonViewParameters _value,
      $Res Function(_$_SberIdLoginButtonViewParameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_SberIdLoginButtonViewParameters(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SberIdLoginButtonViewType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SberIdLoginButtonViewParameters
    extends _SberIdLoginButtonViewParameters {
  const _$_SberIdLoginButtonViewParameters(
      {@JsonKey(name: "button_type")
      @SberIdLoginButtonViewTypeConverter()
          required this.type})
      : super._();

  factory _$_SberIdLoginButtonViewParameters.fromJson(
          Map<String, dynamic> json) =>
      _$$_SberIdLoginButtonViewParametersFromJson(json);

  @override
  @JsonKey(name: "button_type")
  @SberIdLoginButtonViewTypeConverter()
  final SberIdLoginButtonViewType type;

  @override
  String toString() {
    return 'SberIdLoginButtonViewParameters(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SberIdLoginButtonViewParameters &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SberIdLoginButtonViewParametersCopyWith<
          _$_SberIdLoginButtonViewParameters>
      get copyWith => __$$_SberIdLoginButtonViewParametersCopyWithImpl<
          _$_SberIdLoginButtonViewParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SberIdLoginButtonViewParametersToJson(
      this,
    );
  }
}

abstract class _SberIdLoginButtonViewParameters
    extends SberIdLoginButtonViewParameters {
  const factory _SberIdLoginButtonViewParameters(
          {@JsonKey(name: "button_type")
          @SberIdLoginButtonViewTypeConverter()
              required final SberIdLoginButtonViewType type}) =
      _$_SberIdLoginButtonViewParameters;
  const _SberIdLoginButtonViewParameters._() : super._();

  factory _SberIdLoginButtonViewParameters.fromJson(Map<String, dynamic> json) =
      _$_SberIdLoginButtonViewParameters.fromJson;

  @override
  @JsonKey(name: "button_type")
  @SberIdLoginButtonViewTypeConverter()
  SberIdLoginButtonViewType get type;
  @override
  @JsonKey(ignore: true)
  _$$_SberIdLoginButtonViewParametersCopyWith<
          _$_SberIdLoginButtonViewParameters>
      get copyWith => throw _privateConstructorUsedError;
}
