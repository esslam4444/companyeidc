import 'package:companyeidc/application/services/business_name_request_service.dart';
import 'package:companyeidc/shared/models/business_name_request.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class BusinessNameRequestRepository {
  Future<Either<Failure, BusinessNameRequest>> findById({required String id});

  Future<Either<Failure, List<BusinessNameRequest>>> findAll();
}

@Injectable(as: BusinessNameRequestRepository)
class BusinessNameRequestRepositoryImpl implements BusinessNameRequestRepository {
  final BusinessNameRequestService service;

  BusinessNameRequestRepositoryImpl(this.service);

  @override
  Future<Either<Failure, BusinessNameRequest>> findById({required String id}) async {
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
  Future<Either<Failure, List<BusinessNameRequest>>> findAll() async {
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
