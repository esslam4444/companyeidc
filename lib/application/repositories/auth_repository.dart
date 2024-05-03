import 'package:companyeidc/application/services/auth_service.dart';
import 'package:companyeidc/shared/models/login_credentials.dart';
import 'package:companyeidc/shared/models/user_account.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> authenticate({required LoginCredentials credentials});

  Future<Either<Failure, UserAccount>> getAccount();
}

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthService service;

  AuthRepositoryImpl(this.service);

  @override
  Future<Either<Failure, String>> authenticate({required LoginCredentials credentials}) async {
    try {
      final res = await service.authenticate(credentials: credentials);
      return right(res.data['id_token']);
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }

  @override
  Future<Either<Failure, UserAccount>> getAccount() async {
    try {
      return right(await service.getUser());
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }
}
