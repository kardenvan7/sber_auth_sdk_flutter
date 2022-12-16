import 'package:freezed_annotation/freezed_annotation.dart';

part 'sber_id_login_button_view_parameters.freezed.dart';
part 'sber_id_login_button_view_parameters.g.dart';

@freezed
class SberIdLoginButtonViewParameters with _$SberIdLoginButtonViewParameters {
  const SberIdLoginButtonViewParameters._();

  const factory SberIdLoginButtonViewParameters({
    @JsonKey(name: "button_type")
    @SberIdLoginButtonViewTypeConverter()
        required SberIdLoginButtonViewType type,
  }) = _SberIdLoginButtonViewParameters;

  factory SberIdLoginButtonViewParameters.fromJson(Map<String, dynamic> json) =>
      _$SberIdLoginButtonViewParametersFromJson(json);
}

enum SberIdLoginButtonViewType {
  defaultType("default_type"),
  whiteType("white_type");

  const SberIdLoginButtonViewType(this.value);

  final String value;
}

class SberIdLoginButtonViewTypeConverter
    extends JsonConverter<SberIdLoginButtonViewType, String> {
  const SberIdLoginButtonViewTypeConverter();

  @override
  SberIdLoginButtonViewType fromJson(String json) {
    return SberIdLoginButtonViewType.values.firstWhere(
      (element) => element.value == json,
      orElse: () => SberIdLoginButtonViewType.defaultType,
    );
  }

  @override
  String toJson(SberIdLoginButtonViewType object) {
    return object.value;
  }
}
