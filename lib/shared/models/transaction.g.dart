// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] as String?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] as String?,
      id: json['id'] as int?,
      transactionNo: json['transactionNo'] as String?,
      transactionType: json['transactionType'] as String?,
      transactionStatus: json['transactionStatus'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      issuedAt: json['issuedAt'] as String?,
      approvedAt: json['approvedAt'] as String?,
      cancelledAt: json['cancelledAt'] as String?,
      refusedAt: json['refusedAt'] as String?,
      notes: json['notes'] as String?,
      refuseNotes: json['refuseNotes'] as String?,
      companyName: json['companyName'] as String?,
      notaryName: json['notaryName'] as String?,
      approvedName: json['approvedName'] as String?,
      businessNameRequestId: json['businessNameRequestId'] as int?,
      commercialRegistryOfficeName:
          json['commercialRegistryOfficeName'] as String?,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'id': instance.id,
      'transactionNo': instance.transactionNo,
      'transactionType': instance.transactionType,
      'transactionStatus': instance.transactionStatus,
      'total': instance.total,
      'issuedAt': instance.issuedAt,
      'approvedAt': instance.approvedAt,
      'cancelledAt': instance.cancelledAt,
      'refusedAt': instance.refusedAt,
      'notes': instance.notes,
      'refuseNotes': instance.refuseNotes,
      'companyName': instance.companyName,
      'notaryName': instance.notaryName,
      'approvedName': instance.approvedName,
      'businessNameRequestId': instance.businessNameRequestId,
      'commercialRegistryOfficeName': instance.commercialRegistryOfficeName,
    };
