import 'package:companyeidc/application/services/company_service.dart';
import 'package:companyeidc/shared/models/company.dart';
import 'package:companyeidc/shared/models/company_search_result.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class CompanyRepository {
  Future<Either<Failure, Company>> findById({required String id});

  Future<Either<Failure, List<Company>>> findAll();

  Future<Either<Failure, List<CompanySearchResult>>> findByName({required String query});
}

@Injectable(as: CompanyRepository)
class CompanyRepositoryImpl implements CompanyRepository {
  final CompanyService service;

  CompanyRepositoryImpl(this.service);

  @override
  Future<Either<Failure, Company>> findById({required String id}) async {
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
  Future<Either<Failure, List<CompanySearchResult>>> findByName({
    required String query,
  }) async {
    try {
      return right(await service.findByName(query: query));
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Company>>> findAll() async {
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
