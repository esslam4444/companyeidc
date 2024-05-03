import 'package:companyeidc/application/repositories/transaction_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/transaction.dart';
import 'package:companyeidc/shared/state/action_state.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod/riverpod.dart';

final transactionFinderProvider = StateNotifierProvider.autoDispose<FindTransactionAction, ActionState<Transaction>>(
  (ref) => ref.resolve<FindTransactionAction>(),
);

@injectable
class FindTransactionAction extends StateController<ActionState<Transaction>> {
  FindTransactionAction(this.repository) : super(const ActionState.initial());

  final TransactionRepository repository;

  final transactionId = FormControl<String>();
  late final form = FormGroup({'transactionId': transactionId});

  bool get isValid => transactionId.isNotNullOrEmpty;

  Future submit() async {
    state = const ActionState.loading();
    final result = await repository.findById(id: transactionId.value!);
    state = result.match(
      (failure) => ActionStateFailure(failure),
      (result) => ActionStateSuccess(result),
    );
  }
}
