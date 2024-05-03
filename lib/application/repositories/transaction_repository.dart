import 'package:companyeidc/application/services/transactions_service.dart';
import 'package:companyeidc/shared/models/transaction.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class TransactionRepository {
  Future<Either<Failure, Transaction>> findById({required String id});

  Future<Either<Failure, List<Transaction>>> findAll();
}

@Injectable(as: TransactionRepository)
class TransactionsRepositoryImpl implements TransactionRepository {
  final TransactionsService service;

  TransactionsRepositoryImpl(this.service);

  @override
  Future<Either<Failure, Transaction>> findById({required String id}) async {
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
  Future<Either<Failure, List<Transaction>>> findAll() async {
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
