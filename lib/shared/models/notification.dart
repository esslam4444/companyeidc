import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'createdDate')
  final String? createdDate;
  @JsonKey(name: 'deletedAt')
  final String? deletedAt;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  @JsonKey(name: 'lastModifiedDate')
  final String? lastModifiedDate;
  @JsonKey(name: 'sentToId')
  final int? sentToId;
  @JsonKey(name: 'sentToLogin')
  final String? sentToLogin;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'title')
  final String title;

  Notification(
      {required this.createdBy,
      required this.createdDate,
      required this.deletedAt,
      required this.description,
      required this.id,
      required this.lastModifiedBy,
      required this.lastModifiedDate,
      required this.sentToId,
      required this.sentToLogin,
      required this.status,
      required this.title});

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}
