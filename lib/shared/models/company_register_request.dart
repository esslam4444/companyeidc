import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_register_request.g.dart';

@JsonSerializable()
class CompanyRegisterRequest {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'companyName')
  final String companyName;
  @JsonKey(name: 'notaryName')
  final String? notaryName;
  @JsonKey(name: 'representativeName')
  final String? representativeName;
  @JsonKey(name: 'commercialRegistryOfficeName')
  final String? commercialRegistryOfficeName;
  @JsonKey(name: 'establishmentDecisionYear')
  final String? establishmentDecisionYear;
  @JsonKey(name: 'commercialRegistryNo')
  final String? commercialRegistryNo;
  @JsonKey(name: 'isApproved')
  final bool? isApproved;
  @JsonKey(name: 'createdDate')
  final String? createdDate;

  CompanyRegisterRequest({
    required this.id,
    required this.companyName,
    required this.notaryName,
    required this.representativeName,
    required this.commercialRegistryOfficeName,
    required this.establishmentDecisionYear,
    required this.commercialRegistryNo,
    required this.isApproved,
    required this.createdDate,
  });

  factory CompanyRegisterRequest.fromJson(Map<String, dynamic> json) => _$CompanyRegisterRequestFromJson(json);

  String getCompanyRegisterRequestStatusString() {
    if (isApproved == null) {
      return 'بانتظار مصادقة محرر العقود';
    } else if (isApproved == true) {
      return 'مقبول';
    } else {
      return 'مرفوض';
    }
  }

  Color getCompanyRegisterRequestStatusColor() {
    if (isApproved == null) {
      return Colors.orange;
    } else if (isApproved == true) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
