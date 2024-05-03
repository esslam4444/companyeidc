import 'package:companyeidc/application/repositories/company_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/company_search_result.dart';
import 'package:companyeidc/shared/state/action_state.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod/riverpod.dart';

final companyFinderProvider = StateNotifierProvider.autoDispose<FindCompanyAction, ActionState<List<CompanySearchResult>>>(
  (ref) => ref.resolve<FindCompanyAction>(),
);

@injectable
class FindCompanyAction extends StateController<ActionState<List<CompanySearchResult>>> {
  FindCompanyAction(this.repository) : super(const ActionState.initial());

  final CompanyRepository repository;

  final query = FormControl<String>();
  late final form = FormGroup({'query': query});

  bool get isValid => query.isNotNullOrEmpty;

  Future submit() async {
    state = const ActionState.loading();
    final result = await repository.findByName(query: query.value!);
    state = result.match(
      (failure) => ActionStateFailure(failure),
      (result) => ActionStateSuccess(result),
    );
  }
}
