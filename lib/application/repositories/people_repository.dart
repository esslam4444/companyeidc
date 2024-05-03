import 'package:companyeidc/application/services/people_service.dart';
import 'package:companyeidc/shared/models/member_ship_check_results.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class PeopleRepository {
  Future<Either<Failure, MemberShipCheckResult>> getMemberShipCheck({
    required String registerNo,
    required String nationalNo,
  });

  Future<Either<Failure, MemberShipCheckResult>> checkMyMemberships();
}

@Injectable(as: PeopleRepository)
class PeopleRepositoryImpl implements PeopleRepository {
  final PeopleService service;

  PeopleRepositoryImpl(this.service);

  @override
  Future<Either<Failure, MemberShipCheckResult>> getMemberShipCheck({
    required String registerNo,
    required String nationalNo,
  }) async {
    try {
      return right(await service.getMemberShip(
        registerNo: registerNo,
        nationalNo: nationalNo,
      ));
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }

  @override
  Future<Either<Failure, MemberShipCheckResult>> checkMyMemberships() async {
    try {
      return right(await service.checkMyMemberships());
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }
}
