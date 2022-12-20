import 'package:freezed_annotation/freezed_annotation.dart';

part 'sber_auth_code_challenge.freezed.dart';
part 'sber_auth_code_challenge.g.dart';

@freezed
class SberAuthCodeChallenge with _$SberAuthCodeChallenge {
  const SberAuthCodeChallenge._();

  const factory SberAuthCodeChallenge({
    required String value,
    required String method,
  }) = _SberAuthCodeChallenge;

  factory SberAuthCodeChallenge.fromJson(Map<String, dynamic> json) =>
      _$SberAuthCodeChallengeFromJson(json);
}
