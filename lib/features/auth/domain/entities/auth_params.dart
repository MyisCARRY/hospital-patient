import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_params.freezed.dart';

part 'auth_params.g.dart';

@freezed
class AuthParams with _$AuthParams {
  factory AuthParams.login({
    @JsonKey(name: 'email') required String login,
    required String password,
  }) = _AuthParams;

  factory AuthParams.empty() {
    return AuthParams.login(
      login: '',
      password: '',
    );
  }

  factory AuthParams.fromJson(Map<String, dynamic> json) => _$AuthParamsFromJson(json);
}
