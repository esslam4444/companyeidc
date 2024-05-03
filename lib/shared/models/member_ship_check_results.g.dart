// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_ship_check_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberShipCheckResult _$MemberShipCheckResultFromJson(
        Map<String, dynamic> json) =>
    MemberShipCheckResult(
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] as String?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      id: json['id'] as int,
      arabicFullName: json['arabicFullName'] as String,
      arabicFirstName: json['arabicFirstName'] as String?,
      arabicFatherName: json['arabicFatherName'] as String?,
      arabicGrandfatherName: json['arabicGrandfatherName'] as String?,
      arabicLastName: json['arabicLastName'] as String?,
      englishFullName: json['englishFullName'] as String?,
      birthDate: json['birthDate'] as String?,
      birthPlace: json['birthPlace'] as String?,
      nationalNo: json['nationalNo'] as String?,
      registerNo: json['registerNo'] as String?,
      gender: json['gender'] as String?,
      passportNo: json['passportNo'] as String?,
      address: json['address'] as String?,
      mobileNo: json['mobileNo'] as String?,
      almadarVerifiedMobileNo: json['almadarVerifiedMobileNo'] as String?,
      libyanaVerifiedMobileNo: json['libyanaVerifiedMobileNo'] as String?,
      email: json['email'] as String?,
      nidStatus: json['nidStatus'] as int?,
      isForeign: json['isForeign'] as bool?,
      status: json['status'] as String?,
      mobileCode: json['mobileCode'] as String?,
      newPassword: json['newPassword'] as String?,
      userId: json['userId'] as int?,
      countryId: json['countryId'] as String?,
      countryNameAr: json['countryNameAr'] as String?,
      municipalId: json['municipalId'] as int?,
      municipalName: json['municipalName'] as String?,
      memberList: (json['memberList'] as List<dynamic>?)
              ?.map((e) => MemberItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastModifiedDate: json['lastModifiedDate'] as String?,
      contributorList: (json['contributorList'] as List<dynamic>?)
              ?.map((e) => ContributorItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      employeeList: (json['employeeList'] as List<dynamic>?)
              ?.map((e) => EmployeeItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MemberShipCheckResultToJson(
        MemberShipCheckResult instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'id': instance.id,
      'arabicFullName': instance.arabicFullName,
      'arabicFirstName': instance.arabicFirstName,
      'arabicFatherName': instance.arabicFatherName,
      'arabicGrandfatherName': instance.arabicGrandfatherName,
      'arabicLastName': instance.arabicLastName,
      'englishFullName': instance.englishFullName,
      'birthDate': instance.birthDate,
      'birthPlace': instance.birthPlace,
      'nationalNo': instance.nationalNo,
      'registerNo': instance.registerNo,
      'gender': instance.gender,
      'passportNo': instance.passportNo,
      'address': instance.address,
      'mobileNo': instance.mobileNo,
      'almadarVerifiedMobileNo': instance.almadarVerifiedMobileNo,
      'libyanaVerifiedMobileNo': instance.libyanaVerifiedMobileNo,
      'email': instance.email,
      'nidStatus': instance.nidStatus,
      'isForeign': instance.isForeign,
      'status': instance.status,
      'mobileCode': instance.mobileCode,
      'newPassword': instance.newPassword,
      'userId': instance.userId,
      'countryId': instance.countryId,
      'countryNameAr': instance.countryNameAr,
      'municipalId': instance.municipalId,
      'municipalName': instance.municipalName,
      'memberList': instance.memberList,
      'contributorList': instance.contributorList,
      'employeeList': instance.employeeList,
    };

MemberItem _$MemberItemFromJson(Map<String, dynamic> json) => MemberItem(
      createdBy: json['createdBy'] as String,
      createdDate: json['createdDate'] as String,
      lastModifiedBy: json['lastModifiedBy'] as String,
      lastModifiedDate: json['lastModifiedDate'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      firstName: json['firstName'] as String,
      fatherName: json['fatherName'] as String,
      grandfatherName: json['grandfatherName'] as String,
      lastName: json['lastName'] as String,
      birthDate: json['birthDate'] as String,
      birthPlace: json['birthPlace'] as String,
      membershipType: json['membershipType'] as String,
      isLawRepresentative: json['isLawRepresentative'] as bool,
      nationalNo: json['nationalNo'] as String,
      registerNo: json['registerNo'] as String,
      passportNo: json['passportNo'] as String?,
      membershipDate: json['membershipDate'] as String,
      address: json['address'] as String,
      phoneNo: json['phoneNo'] as String,
      nidStatus: json['nidStatus'] as int,
      isForeign: json['isForeign'] as bool,
      status: json['status'] as String?,
      companyId: json['companyId'] as int,
      companyName: json['companyName'] as String,
      municipalId: json['municipalId'] as int,
      municipalName: json['municipalName'] as String,
      personId: json['personId'] as int,
    );

Map<String, dynamic> _$MemberItemToJson(MemberItem instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'fatherName': instance.fatherName,
      'grandfatherName': instance.grandfatherName,
      'lastName': instance.lastName,
      'birthDate': instance.birthDate,
      'birthPlace': instance.birthPlace,
      'membershipType': instance.membershipType,
      'isLawRepresentative': instance.isLawRepresentative,
      'nationalNo': instance.nationalNo,
      'registerNo': instance.registerNo,
      'passportNo': instance.passportNo,
      'membershipDate': instance.membershipDate,
      'address': instance.address,
      'phoneNo': instance.phoneNo,
      'nidStatus': instance.nidStatus,
      'isForeign': instance.isForeign,
      'status': instance.status,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'municipalId': instance.municipalId,
      'municipalName': instance.municipalName,
      'personId': instance.personId,
    };

ContributorItem _$ContributorItemFromJson(Map<String, dynamic> json) =>
    ContributorItem(
      createdBy: json['createdBy'] as String,
      createdDate: json['createdDate'] as String,
      lastModifiedBy: json['lastModifiedBy'] as String,
      lastModifiedDate: json['lastModifiedDate'] as String,
      id: json['id'] as int,
      contributorType: json['contributorType'] as String,
      name: json['name'] as String,
      firstName: json['firstName'] as String,
      fatherName: json['fatherName'] as String,
      grandfatherName: json['grandfatherName'] as String,
      lastName: json['lastName'] as String,
      birthDate: json['birthDate'] as String,
      birthPlace: json['birthPlace'] as String,
      nationalNo: json['nationalNo'] as String,
      registerNo: json['registerNo'] as String,
      establishmentDate: json['establishmentDate'] as String?,
      idNo: json['idNo'],
      mobileNo: json['mobileNo'] as String,
      nidStatus: json['nidStatus'] as int,
      isActive: json['isActive'] as bool,
      capitalPecentage: (json['capitalPecentage'] as num).toDouble(),
      countOfShares: (json['countOfShares'] as num).toDouble(),
      amountPayed: (json['amountPayed'] as num).toDouble(),
      status: json['status'] as String?,
      companyId: json['companyId'] as int,
      companyName: json['companyName'] as String,
      countryId: json['countryId'] as String?,
      countryNameAr: json['countryNameAr'] as String?,
      municipalId: json['municipalId'] as String?,
      municipalName: json['municipalName'] as String?,
      contributedCompanyId: json['contributedCompanyId'] as String?,
      contributedCompanyName: json['contributedCompanyName'] as String?,
      personId: json['personId'] as int,
      transactionId: json['transactionId'] as String?,
      transactionTransactionNo: json['transactionTransactionNo'] as String?,
    );

Map<String, dynamic> _$ContributorItemToJson(ContributorItem instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'id': instance.id,
      'contributorType': instance.contributorType,
      'name': instance.name,
      'firstName': instance.firstName,
      'fatherName': instance.fatherName,
      'grandfatherName': instance.grandfatherName,
      'lastName': instance.lastName,
      'birthDate': instance.birthDate,
      'birthPlace': instance.birthPlace,
      'nationalNo': instance.nationalNo,
      'registerNo': instance.registerNo,
      'establishmentDate': instance.establishmentDate,
      'idNo': instance.idNo,
      'mobileNo': instance.mobileNo,
      'nidStatus': instance.nidStatus,
      'isActive': instance.isActive,
      'capitalPecentage': instance.capitalPecentage,
      'countOfShares': instance.countOfShares,
      'amountPayed': instance.amountPayed,
      'status': instance.status,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'countryId': instance.countryId,
      'countryNameAr': instance.countryNameAr,
      'municipalId': instance.municipalId,
      'municipalName': instance.municipalName,
      'contributedCompanyId': instance.contributedCompanyId,
      'contributedCompanyName': instance.contributedCompanyName,
      'personId': instance.personId,
      'transactionId': instance.transactionId,
      'transactionTransactionNo': instance.transactionTransactionNo,
    };

EmployeeItem _$EmployeeItemFromJson(Map<String, dynamic> json) => EmployeeItem(
      companyId: json['companyId'] as int,
      companyName: json['companyName'] as String,
      createdBy: json['createdBy'] as String,
      createdDate: json['createdDate'] as String,
      deletedAt: json['deletedAt'] as String,
      id: json['id'] as int,
      lastModifiedBy: json['lastModifiedBy'] as String,
      lastModifiedDate: json['lastModifiedDate'] as String,
      name: json['name'] as String,
      nationalNo: json['nationalNo'] as String,
      passport: json['passport'] as String,
      personId: json['personId'] as int,
      registerNo: json['registerNo'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$EmployeeItemToJson(EmployeeItem instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'deletedAt': instance.deletedAt,
      'id': instance.id,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
      'name': instance.name,
      'nationalNo': instance.nationalNo,
      'passport': instance.passport,
      'personId': instance.personId,
      'registerNo': instance.registerNo,
      'status': instance.status,
    };
