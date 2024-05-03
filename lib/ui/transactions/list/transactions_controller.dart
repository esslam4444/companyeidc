import 'package:companyeidc/application/repositories/transaction_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/transaction.dart';
import 'package:companyeidc/shared/state/async_data_state.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

final transactionsProvider = StateNotifierProvider.autoDispose<TransactionsController, AsyncDataState<List<Transaction>>>(
  (ref) => ref.resolve<TransactionsController>()..fetch(),
);

@injectable
class TransactionsController extends StateController<AsyncDataState<List<Transaction>>> {
  TransactionsController(this.repository) : super(const AsyncDataState.loading());

  final TransactionRepository repository;

  Future fetch() async {
    state = const AsyncDataState.loading();
    final result = await repository.findAll();
    state = result.match(
      (failure) => AsyncDataState.failure(failure),
      (result) => AsyncDataState.loaded(result),
    );
  }
}
