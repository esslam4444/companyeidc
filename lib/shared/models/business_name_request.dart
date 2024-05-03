import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business_name_request.g.dart';

@JsonSerializable()
class BusinessNameRequest {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'selectedFullName')
  final String? selectedFullName;
  @JsonKey(name: 'selectedName')
  final String? selectedName;
  @JsonKey(name: 'businessNameStatus')
  final String? businessNameStatus;
  @JsonKey(name: 'commercialRegistryOfficeName')
  final String? commercialRegistryOfficeName;
  @JsonKey(name: 'notaryName')
  final String? notaryName;
  @JsonKey(name: 'transactionId')
  final int? transactionId;
  @JsonKey(name: 'transactionTransactionNo')
  final String? transactionTransactionNo;

  BusinessNameRequest({
    required this.id,
    required this.selectedFullName,
    required this.selectedName,
    required this.businessNameStatus,
    required this.commercialRegistryOfficeName,
    required this.notaryName,
    required this.transactionId,
    required this.transactionTransactionNo,
  });

  factory BusinessNameRequest.fromJson(Map<String, dynamic> json) => _$BusinessNameRequestFromJson(json);

  String getBusinessNameStatusString() {
    final map = {
      'PENDING': 'انتظار',
      'EXPIRED': 'منتهي الصلاحية',
      'APPROVED': 'مقبول',
      'REFUSED': 'مرفوض',
      'TAKEN': 'اسم مستخدم',
    };
    return map[businessNameStatus] ?? ' ';
  }

  Color getBusinessNameStatusColor() {
    final map = {
      'PENDING': Colors.orange,
      'EXPIRED': Colors.red,
      'APPROVED': Colors.green,
      'REFUSED': Colors.red,
      'TAKEN': Colors.green,
    };
    return map[businessNameStatus] ?? Colors.blueGrey;
  }
}
