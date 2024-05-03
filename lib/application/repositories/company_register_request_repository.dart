import 'package:companyeidc/application/services/company_register_request_service.dart';
import 'package:companyeidc/shared/models/company_register_request.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class CompanyRegisterRequestRepository {
  Future<Either<Failure, CompanyRegisterRequest>> findById({required String id});

  Future<Either<Failure, List<CompanyRegisterRequest>>> findAll();
}

@Injectable(as: CompanyRegisterRequestRepository)
class CompanyRegisterRequestRepositoryImpl implements CompanyRegisterRequestRepository {
  final CompanyRegisterRequestService service;

  CompanyRegisterRequestRepositoryImpl(this.service);

  @override
  Future<Either<Failure, CompanyRegisterRequest>> findById({required String id}) async {
    try {
      return right(await service.findById(id));
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<CompanyRegisterRequest>>> findAll() async {
    try {
      return right(await service.findAll());
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }
}
