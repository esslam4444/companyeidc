// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] as String?,
      deletedAt: json['deletedAt'] as String?,
      description: json['description'] as String?,
      id: json['id'] as int?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] as String?,
      sentToId: json['sentToId'] as int?,
      sentToLogin: json['sentToLogin'] as String?,
      status: json['status'] as String?,
      title: json['title'] as String,
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'deletedAt': instance.deletedAt,
      'description': instance.description,
      'id': instance.id,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'sentToId': instance.sentToId,
      'sentToLogin': instance.sentToLogin,
      'status': instance.status,
      'title': instance.title,
    };
