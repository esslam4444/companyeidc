import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'createdDate')
  final String? createdDate;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  @JsonKey(name: 'lastModifiedDate')
  final String? lastModifiedDate;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'transactionNo')
  final String? transactionNo;
  @JsonKey(name: 'transactionType')
  final String? transactionType;
  @JsonKey(name: 'transactionStatus')
  final String? transactionStatus;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'issuedAt')
  final String? issuedAt;
  @JsonKey(name: 'approvedAt')
  final String? approvedAt;
  @JsonKey(name: 'cancelledAt')
  final String? cancelledAt;
  @JsonKey(name: 'refusedAt')
  final String? refusedAt;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'refuseNotes')
  final String? refuseNotes;
  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'notaryName')
  final String? notaryName;
  @JsonKey(name: 'approvedName')
  final String? approvedName;
  @JsonKey(name: 'businessNameRequestId')
  final int? businessNameRequestId;
  @JsonKey(name: 'commercialRegistryOfficeName')
  final String? commercialRegistryOfficeName;

  Transaction({
    required this.createdBy,
    required this.createdDate,
    required this.lastModifiedBy,
    required this.lastModifiedDate,
    required this.id,
    required this.transactionNo,
    required this.transactionType,
    required this.transactionStatus,
    required this.total,
    required this.issuedAt,
    required this.approvedAt,
    required this.cancelledAt,
    required this.refusedAt,
    required this.notes,
    required this.refuseNotes,
    required this.companyName,
    required this.notaryName,
    required this.approvedName,
    required this.businessNameRequestId,
    required this.commercialRegistryOfficeName,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  String getTransactionTypeString() {
    final map = {
      'ESTABLISHMENT': 'تأسيس شركة',
      'REQUEST_BUSINESS_NAME': 'طلب اسم تجاري',
      'RENEW': 'تجديد سجل تجاري',
    };
    return map[transactionType] ?? ' ';
  }

  String getTransactionStatusString() {
    final map = {
      'DRAFT': 'تعبئة البيانات',
      'PENDING_PAYMENT': 'انتظار الدفع',
      'PENDING_SEARCHER_APPROVAL': 'انتظار التحقق من الاسم',
      'PENDING_LAW_APPROVAL': 'انتظار موافقة القانوني',
      'PENDING_REGISTRATION': 'انتظار اجراء القيد',
      'PENDING_PRINT': 'جاهزة لطباعة المستخرج',
      'PENDING_MANAGER_APPROVAL': 'انتظار موافقة مدير المكتب',
      'APPROVED': 'تمت الموافقة',
      'MANAGER_REFUSED': 'مرفوضة من مدير المكتب',
      'LAW_REFUSED': 'مرفوضة من القانوني',
      'REFUSED': 'مرفوضة',
      'CANCELLED': 'ملغية',
    };
    return map[transactionStatus] ?? ' ';
  }

  Color getTransactionStatusColor() {
    final map = {
      'APPROVED': Colors.green,
      'REFUSED': Colors.red,
      'MANAGER_REFUSED': Colors.red,
      'LAW_REFUSED': Colors.red,
      'CANCELLED': Colors.redAccent,
    };
    return map[transactionStatus] ?? Colors.orange;
  }

/** DRAFT,
    PENDING_SEARCHER_APPROVAL,
    PENDING_LAW_APPROVAL,
    PENDING_PRINT,
    PENDING_MANAGER_APPROVAL,
    PENDING_PAYMENT,
    PENDING_REGISTRATION,
    APPROVED,
    MANAGER_REFUSED,
    LAW_REFUSED,
    REFUSED,
    CANCELLED
 */
}
