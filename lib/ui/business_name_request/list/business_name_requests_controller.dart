import 'package:companyeidc/application/repositories/business_name_request_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/business_name_request.dart';
import 'package:companyeidc/shared/state/async_data_state.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

final businessNameRequestsProvider = StateNotifierProvider.autoDispose<BusinessNameRequestsController, AsyncDataState<List<BusinessNameRequest>>>(
  (ref) => ref.resolve<BusinessNameRequestsController>()..fetch(),
);

@injectable
class BusinessNameRequestsController extends StateController<AsyncDataState<List<BusinessNameRequest>>> {
  BusinessNameRequestsController(this.repository) : super(const AsyncDataState.loading());

  final BusinessNameRequestRepository repository;

  Future fetch() async {
    state = const AsyncDataState.loading();
    final result = await repository.findAll();
    state = result.match(
      (failure) => AsyncDataState.failure(failure),
      (result) => AsyncDataState.loaded(result),
    );
  }
}
