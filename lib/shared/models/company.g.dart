// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as int,
      name: json['name'] as String?,
      companyNo: json['companyNo'] as String?,
      commercialRegistryOfficeName:
          json['commercialRegistryOfficeName'] as String?,
      commercialRegistryNo: json['commercialRegistryNo'] as String?,
      companyStatus: json['companyStatus'] as String?,
      currentRepresentativeArabicFullName:
          json['currentRepresentativeArabicFullName'] as String?,
      establishmentDate: json['establishmentDate'] as String?,
      notaryName: json['notaryName'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'companyNo': instance.companyNo,
      'commercialRegistryOfficeName': instance.commercialRegistryOfficeName,
      'commercialRegistryNo': instance.commercialRegistryNo,
      'companyStatus': instance.companyStatus,
      'currentRepresentativeArabicFullName':
          instance.currentRepresentativeArabicFullName,
      'establishmentDate': instance.establishmentDate,
      'notaryName': instance.notaryName,
    };
