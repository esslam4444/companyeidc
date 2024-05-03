import 'package:companyeidc/application/repositories/company_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/company.dart';
import 'package:companyeidc/shared/state/action_state.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

final companyCheckerProvider = StateNotifierProvider.autoDispose<CheckCompanyAction, ActionState<Company>>(
  (ref) => ref.resolve<CheckCompanyAction>(),
);

@injectable
class CheckCompanyAction extends StateController<ActionState<Company>> {
  CheckCompanyAction(this.repository) : super(const ActionState.initial());

  final CompanyRepository repository;

  Future submit({required String id}) async {
    state = const ActionState.loading();
    final result = await repository.findById(id: id);
    state = result.match(
      (failure) => ActionStateFailure(failure),
      (result) => ActionStateSuccess(result),
    );
  }
}
