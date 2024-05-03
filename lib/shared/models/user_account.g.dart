// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) => UserAccount(
      activated: json['activated'] as bool?,
      authorities: (json['authorities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] as String?,
      email: json['email'] as String?,
      firebaseId: json['firebaseId'] as String?,
      firstName: json['firstName'] as String,
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String?,
      langKey: json['langKey'] as String?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] as String?,
      lastName: json['lastName'] as String?,
      login: json['login'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UserAccountToJson(UserAccount instance) =>
    <String, dynamic>{
      'activated': instance.activated,
      'authorities': instance.authorities,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'email': instance.email,
      'firebaseId': instance.firebaseId,
      'firstName': instance.firstName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'langKey': instance.langKey,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'lastName': instance.lastName,
      'login': instance.login,
      'phone': instance.phone,
    };
