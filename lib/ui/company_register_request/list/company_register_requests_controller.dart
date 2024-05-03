import 'package:companyeidc/application/repositories/company_register_request_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/company_register_request.dart';
import 'package:companyeidc/shared/state/async_data_state.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

final companyRegisterRequestsProvider = StateNotifierProvider.autoDispose<CompanyRegisterRequestsController, AsyncDataState<List<CompanyRegisterRequest>>>(
  (ref) => ref.resolve<CompanyRegisterRequestsController>()..fetch(),
);

@injectable
class CompanyRegisterRequestsController extends StateController<AsyncDataState<List<CompanyRegisterRequest>>> {
  CompanyRegisterRequestsController(this.repository) : super(const AsyncDataState.loading());

  final CompanyRegisterRequestRepository repository;

  Future fetch() async {
    state = const AsyncDataState.loading();
    final result = await repository.findAll();
    state = result.match(
      (failure) => AsyncDataState.failure(failure),
      (result) => AsyncDataState.loaded(result),
    );
  }
}
