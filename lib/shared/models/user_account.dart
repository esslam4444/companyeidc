import 'package:json_annotation/json_annotation.dart';

part 'user_account.g.dart';

@JsonSerializable()
class UserAccount {
  @JsonKey(name: 'activated')
  final bool? activated;
  @JsonKey(name: 'authorities')
  final List<String>? authorities;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'createdDate')
  final String? createdDate;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'firebaseId')
  final String? firebaseId;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'langKey')
  final String? langKey;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  @JsonKey(name: 'lastModifiedDate')
  final String? lastModifiedDate;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'login')
  final String? login;
  @JsonKey(name: 'phone')
  final String? phone;

  UserAccount(
      {required this.activated,
      required this.authorities,
      required this.createdBy,
      required this.createdDate,
      required this.email,
      required this.firebaseId,
      required this.firstName,
      required this.id,
      required this.imageUrl,
      required this.langKey,
      required this.lastModifiedBy,
      required this.lastModifiedDate,
      required this.lastName,
      required this.login,
      required this.phone});

  factory UserAccount.fromJson(Map<String, dynamic> json) => _$UserAccountFromJson(json);
}
