import 'package:json_annotation/json_annotation.dart';

part 'login_credentials.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class LoginCredentials {
  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'rememberMe')
  final bool rememberMe;
  @JsonKey(name: 'recapchaToken')
  final String recapchaToken;
  @JsonKey(name: 'firebaseId')
  final String firebaseId;

  LoginCredentials({required this.username, required this.password, this.rememberMe = true, this.recapchaToken = '', required this.firebaseId});

  factory LoginCredentials.fromJson(Map<String, dynamic> json) => _$LoginCredentialsFromJson(json);

  Map<String, dynamic> toJson() => _$LoginCredentialsToJson(this);
}
