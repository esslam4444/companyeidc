import 'package:companyeidc/application/repositories/company_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/company.dart';
import 'package:companyeidc/shared/state/async_data_state.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

final companiesProvider = StateNotifierProvider.autoDispose<CompaniesController, AsyncDataState<List<Company>>>(
  (ref) => ref.resolve<CompaniesController>()..fetch(),
);

@injectable
class CompaniesController extends StateController<AsyncDataState<List<Company>>> {
  CompaniesController(this.repository) : super(const AsyncDataState.loading());

  final CompanyRepository repository;

  Future fetch() async {
    state = const AsyncDataState.loading();
    final result = await repository.findAll();
    state = result.match(
      (failure) => AsyncDataState.failure(failure),
      (result) => AsyncDataState.loaded(result),
    );
  }
}
