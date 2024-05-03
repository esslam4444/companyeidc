import 'package:companyeidc/shared/models/transaction.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'transactions_service.g.dart';

const String resource = '/public/transactions';

@injectable
@RestApi()
abstract class TransactionsService {
  @factoryMethod
  factory TransactionsService(Dio dio) = _TransactionsService;

  @GET('$resource/query/{id}')
  Future<Transaction> findById(@Path('id') String id);

  @GET('/transactions')
  Future<List<Transaction>> findAll();
}
