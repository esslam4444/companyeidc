import 'package:json_annotation/json_annotation.dart';

part 'member_ship_check_results.g.dart';

@JsonSerializable()
class MemberShipCheckResult {
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'createdDate')
  final String? createdDate;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  @JsonKey(name: 'lastModifiedDate')
  final String? lastModifiedDate;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'arabicFullName')
  final String arabicFullName;
  @JsonKey(name: 'arabicFirstName')
  final String? arabicFirstName;
  @JsonKey(name: 'arabicFatherName')
  final String? arabicFatherName;
  @JsonKey(name: 'arabicGrandfatherName')
  final String? arabicGrandfatherName;
  @JsonKey(name: 'arabicLastName')
  final String? arabicLastName;
  @JsonKey(name: 'englishFullName')
  final String? englishFullName;
  @JsonKey(name: 'birthDate')
  final String? birthDate;
  @JsonKey(name: 'birthPlace')
  final String? birthPlace;
  @JsonKey(name: 'nationalNo')
  final String? nationalNo;
  @JsonKey(name: 'registerNo')
  final String? registerNo;
  @JsonKey(name: 'gender')
  final String? gender;
  @JsonKey(name: 'passportNo')
  final String? passportNo;

  @JsonKey(name: 'address')
  final String? address;

  @JsonKey(name: 'mobileNo')
  final String? mobileNo;
  @JsonKey(name: 'almadarVerifiedMobileNo')
  final String? almadarVerifiedMobileNo;
  @JsonKey(name: 'libyanaVerifiedMobileNo')
  final String? libyanaVerifiedMobileNo;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'nidStatus')
  final int? nidStatus;
  @JsonKey(name: 'isForeign')
  final bool? isForeign;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'mobileCode')
  final String? mobileCode;
  @JsonKey(name: 'newPassword')
  final String? newPassword;
  @JsonKey(name: 'userId')
  final int? userId;
  @JsonKey(name: 'countryId')
  final String? countryId;
  @JsonKey(name: 'countryNameAr')
  final String? countryNameAr;
  @JsonKey(name: 'municipalId')
  final int? municipalId;
  @JsonKey(name: 'municipalName')
  final String? municipalName;
  @JsonKey(name: 'memberList')
  final List<MemberItem> memberList;
  @JsonKey(name: 'contributorList')
  final List<ContributorItem> contributorList;
  @JsonKey(name: 'employeeList')
  final List<EmployeeItem> employeeList;

  factory MemberShipCheckResult.fromJson(Map<String, dynamic> json) =>
      _$MemberShipCheckResultFromJson(json);

  MemberShipCheckResult({
    required this.createdBy,
    required this.createdDate,
    required this.lastModifiedBy,
    required this.id,
    required this.arabicFullName,
    required this.arabicFirstName,
    required this.arabicFatherName,
    required this.arabicGrandfatherName,
    required this.arabicLastName,
    required this.englishFullName,
    required this.birthDate,
    required this.birthPlace,
    required this.nationalNo,
    required this.registerNo,
    required this.gender,
    required this.passportNo,
    required this.address,
    required this.mobileNo,
    required this.almadarVerifiedMobileNo,
    required this.libyanaVerifiedMobileNo,
    required this.email,
    required this.nidStatus,
    required this.isForeign,
    required this.status,
    required this.mobileCode,
    required this.newPassword,
    required this.userId,
    required this.countryId,
    required this.countryNameAr,
    required this.municipalId,
    required this.municipalName,
    this.memberList = const [],
    required this.lastModifiedDate,
    this.contributorList = const [],
    this.employeeList = const [],
  });
}

@JsonSerializable()
class MemberItem {
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'createdDate')
  final String createdDate;
  @JsonKey(name: 'lastModifiedBy')
  final String lastModifiedBy;
  @JsonKey(name: 'lastModifiedDate')
  final String lastModifiedDate;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'fatherName')
  final String fatherName;
  @JsonKey(name: 'grandfatherName')
  final String grandfatherName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'birthDate')
  final String birthDate;
  @JsonKey(name: 'birthPlace')
  final String birthPlace;
  @JsonKey(name: 'membershipType')
  final String membershipType;
  @JsonKey(name: 'isLawRepresentative')
  final bool isLawRepresentative;
  @JsonKey(name: 'nationalNo')
  final String nationalNo;
  @JsonKey(name: 'registerNo')
  final String registerNo;
  @JsonKey(name: 'passportNo')
  final String? passportNo;
  @JsonKey(name: 'membershipDate')
  final String membershipDate;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'phoneNo')
  final String phoneNo;
  @JsonKey(name: 'nidStatus')
  final int nidStatus;
  @JsonKey(name: 'isForeign')
  final bool isForeign;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'companyId')
  final int companyId;
  @JsonKey(name: 'companyName')
  final String companyName;
  @JsonKey(name: 'municipalId')
  final int municipalId;
  @JsonKey(name: 'municipalName')
  final String municipalName;
  @JsonKey(name: 'personId')
  final int personId;

  MemberItem({
    required this.createdBy,
    required this.createdDate,
    required this.lastModifiedBy,
    required this.lastModifiedDate,
    required this.id,
    required this.name,
    required this.firstName,
    required this.fatherName,
    required this.grandfatherName,
    required this.lastName,
    required this.birthDate,
    required this.birthPlace,
    required this.membershipType,
    required this.isLawRepresentative,
    required this.nationalNo,
    required this.registerNo,
    required this.passportNo,
    required this.membershipDate,
    required this.address,
    required this.phoneNo,
    required this.nidStatus,
    required this.isForeign,
    required this.status,
    required this.companyId,
    required this.companyName,
    required this.municipalId,
    required this.municipalName,
    required this.personId,
  });

  factory MemberItem.fromJson(Map<String, dynamic> json) =>
      _$MemberItemFromJson(json);
}

@JsonSerializable()
class ContributorItem {
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'createdDate')
  final String createdDate;
  @JsonKey(name: 'lastModifiedBy')
  final String lastModifiedBy;
  @JsonKey(name: 'lastModifiedDate')
  final String lastModifiedDate;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'contributorType')
  final String contributorType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'fatherName')
  final String fatherName;
  @JsonKey(name: 'grandfatherName')
  final String grandfatherName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'birthDate')
  final String birthDate;
  @JsonKey(name: 'birthPlace')
  final String birthPlace;
  @JsonKey(name: 'nationalNo')
  final String nationalNo;
  @JsonKey(name: 'registerNo')
  final String registerNo;
  @JsonKey(name: 'establishmentDate')
  final String? establishmentDate;
  @JsonKey(name: 'idNo')
  final dynamic idNo;
  @JsonKey(name: 'mobileNo')
  final String mobileNo;
  @JsonKey(name: 'nidStatus')
  final int nidStatus;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'capitalPecentage')
  final double capitalPecentage;
  @JsonKey(name: 'countOfShares')
  final double countOfShares;
  @JsonKey(name: 'amountPayed')
  final double amountPayed;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'companyId')
  final int companyId;
  @JsonKey(name: 'companyName')
  final String companyName;
  @JsonKey(name: 'countryId')
  final String? countryId;
  @JsonKey(name: 'countryNameAr')
  final String? countryNameAr;
  @JsonKey(name: 'municipalId')
  final String? municipalId;
  @JsonKey(name: 'municipalName')
  final String? municipalName;
  @JsonKey(name: 'contributedCompanyId')
  final String? contributedCompanyId;
  @JsonKey(name: 'contributedCompanyName')
  final String? contributedCompanyName;
  @JsonKey(name: 'personId')
  final int personId;
  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(name: 'transactionTransactionNo')
  final String? transactionTransactionNo;

  ContributorItem(
      {required this.createdBy,
      required this.createdDate,
      required this.lastModifiedBy,
      required this.lastModifiedDate,
      required this.id,
      required this.contributorType,
      required this.name,
      required this.firstName,
      required this.fatherName,
      required this.grandfatherName,
      required this.lastName,
      required this.birthDate,
      required this.birthPlace,
      required this.nationalNo,
      required this.registerNo,
      required this.establishmentDate,
      required this.idNo,
      required this.mobileNo,
      required this.nidStatus,
      required this.isActive,
      required this.capitalPecentage,
      required this.countOfShares,
      required this.amountPayed,
      required this.status,
      required this.companyId,
      required this.companyName,
      required this.countryId,
      required this.countryNameAr,
      required this.municipalId,
      required this.municipalName,
      required this.contributedCompanyId,
      required this.contributedCompanyName,
      required this.personId,
      required this.transactionId,
      required this.transactionTransactionNo});

  factory ContributorItem.fromJson(Map<String, dynamic> json) =>
      _$ContributorItemFromJson(json);
}

@JsonSerializable()
class EmployeeItem {
  @JsonKey(name: 'companyId')
  final int companyId;
  @JsonKey(name: 'companyName')
  final String companyName;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'createdDate')
  final String createdDate;
  @JsonKey(name: 'deletedAt')
  final String deletedAt;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'lastModifiedBy')
  final String lastModifiedBy;
  @JsonKey(name: 'lastModifiedDate')
  final String lastModifiedDate;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'nationalNo')
  final String nationalNo;
  @JsonKey(name: 'passport')
  final String passport;
  @JsonKey(name: 'personId')
  final int personId;
  @JsonKey(name: 'registerNo')
  final String registerNo;
  @JsonKey(name: 'status')
  final String status;

  EmployeeItem({
    required this.companyId,
    required this.companyName,
    required this.createdBy,
    required this.createdDate,
    required this.deletedAt,
    required this.id,
    required this.lastModifiedBy,
    required this.lastModifiedDate,
    required this.name,
    required this.nationalNo,
    required this.passport,
    required this.personId,
    required this.registerNo,
    required this.status,
  });

  factory EmployeeItem.fromJson(Map<String, dynamic> json) =>
      _$EmployeeItemFromJson(json);
}
