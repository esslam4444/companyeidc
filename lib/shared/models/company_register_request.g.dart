// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyRegisterRequest _$CompanyRegisterRequestFromJson(
        Map<String, dynamic> json) =>
    CompanyRegisterRequest(
      id: json['id'] as int,
      companyName: json['companyName'] as String,
      notaryName: json['notaryName'] as String?,
      representativeName: json['representativeName'] as String?,
      commercialRegistryOfficeName:
          json['commercialRegistryOfficeName'] as String?,
      establishmentDecisionYear: json['establishmentDecisionYear'] as String?,
      commercialRegistryNo: json['commercialRegistryNo'] as String?,
      isApproved: json['isApproved'] as bool?,
      createdDate: json['createdDate'] as String?,
    );

Map<String, dynamic> _$CompanyRegisterRequestToJson(
        CompanyRegisterRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'notaryName': instance.notaryName,
      'representativeName': instance.representativeName,
      'commercialRegistryOfficeName': instance.commercialRegistryOfficeName,
      'establishmentDecisionYear': instance.establishmentDecisionYear,
      'commercialRegistryNo': instance.commercialRegistryNo,
      'isApproved': instance.isApproved,
      'createdDate': instance.createdDate,
    };
