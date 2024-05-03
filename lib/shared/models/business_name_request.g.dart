// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_name_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessNameRequest _$BusinessNameRequestFromJson(Map<String, dynamic> json) =>
    BusinessNameRequest(
      id: json['id'] as int?,
      selectedFullName: json['selectedFullName'] as String?,
      selectedName: json['selectedName'] as String?,
      businessNameStatus: json['businessNameStatus'] as String?,
      commercialRegistryOfficeName:
          json['commercialRegistryOfficeName'] as String?,
      notaryName: json['notaryName'] as String?,
      transactionId: json['transactionId'] as int?,
      transactionTransactionNo: json['transactionTransactionNo'] as String?,
    );

Map<String, dynamic> _$BusinessNameRequestToJson(
        BusinessNameRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'selectedFullName': instance.selectedFullName,
      'selectedName': instance.selectedName,
      'businessNameStatus': instance.businessNameStatus,
      'commercialRegistryOfficeName': instance.commercialRegistryOfficeName,
      'notaryName': instance.notaryName,
      'transactionId': instance.transactionId,
      'transactionTransactionNo': instance.transactionTransactionNo,
    };
