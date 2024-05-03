import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'companyNo')
  final String? companyNo;
  @JsonKey(name: 'commercialRegistryOfficeName')
  final String? commercialRegistryOfficeName;
  @JsonKey(name: 'commercialRegistryNo')
  final String? commercialRegistryNo;
  @JsonKey(name: 'companyStatus')
  final String? companyStatus;
  @JsonKey(name: 'currentRepresentativeArabicFullName')
  final String? currentRepresentativeArabicFullName;
  @JsonKey(name: 'establishmentDate')
  final String? establishmentDate;
  @JsonKey(name: 'notaryName')
  final String? notaryName;

  Company({
    required this.id,
    required this.name,
    required this.companyNo,
    required this.commercialRegistryOfficeName,
    required this.commercialRegistryNo,
    required this.companyStatus,
    required this.currentRepresentativeArabicFullName,
    required this.establishmentDate,
    required this.notaryName,
  });

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  String getCompanyStatusString() {
    final map = {
      'IN_ESTABLISHMENT': 'تعبئة البيانات',
      'IN_OLD_REGISTER_REQUEST_APPROVAL': 'اكمال النواقص',
      'ESTABLISHMENT_REQUESTED': 'بانتظار التأسيس',
      'ACTIVE': 'قائمة',
      'DISMISSAL': 'تم شطبها',
      'SUSPENDED': 'متوقفة',
      'IN_RENEWAL': 'قيد التجديد',
      'IN_EDIT': 'قيد التعديل',
    };
    return map[companyStatus] ?? ' ';
  }

  Color getCompanyStatusColor() {
    final map = {
      'IN_ESTABLISHMENT': Colors.orange,
      'IN_OLD_REGISTER_REQUEST_APPROVAL': Colors.orange,
      'ESTABLISHMENT_REQUESTED': Colors.orange,
      'ACTIVE': Colors.green,
      'DISMISSAL': Colors.red,
      'SUSPENDED': Colors.red,
      'IN_RENEWAL': Colors.orange,
      'IN_EDIT': Colors.orange,
    };
    return map[companyStatus] ?? Colors.blueGrey;
  }
}
