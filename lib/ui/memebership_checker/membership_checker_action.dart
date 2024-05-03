import 'package:companyeidc/application/repositories/people_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/member_ship_check_results.dart';
import 'package:companyeidc/shared/state/async_data_state.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod/riverpod.dart';

import '../../shared/state/action_state.dart';

final membershipCheckerProvider = StateNotifierProvider.autoDispose<
    MemberShipCheckerAction, AsyncDataState<MemberShipCheckResult>>(
  (ref) => ref.resolve<MemberShipCheckerAction>()..fetch(),
);

@injectable
class MemberShipCheckerAction
    extends StateController<AsyncDataState<MemberShipCheckResult>> {
  MemberShipCheckerAction(this.repository)
      : super(const AsyncDataState.loading());

  final PeopleRepository repository;

  Future fetch() async {
    state = const AsyncDataState.loading();
    final result = await repository.checkMyMemberships();
    state = result.match(
      (failure) => AsyncDataState.failure(failure),
      (result) => AsyncDataState.loaded(result),
    );
  }

final nationalNo = FormControl<String>(validators: [Validators.required]);
final registerNo = FormControl<String>(validators: [Validators.required]);

late final form = FormGroup({
  'nationalNo': nationalNo,
  'registerNo': registerNo,
});

bool get isValid => form.valid;

Future submit() async {
  ///changed "state = const ActionState.loading()" <<--->> state = const ActionState.loading() as AsyncDataState<MemberShipCheckResult>;
  state = const ActionState.loading() as AsyncDataState<MemberShipCheckResult>;
  final result = await repository.getMemberShipCheck(
    nationalNo: nationalNo.value!,
    registerNo: registerNo.value!,
  );
  state = result.match(
        (failure) => AsyncDataState.failure(failure), ///changed from  "(failure) => ActionStateFailure(failure)," ========Adjust to return AsyncDataState<MemberShipCheckResult>

    ///Ensure that AsyncDataState.failure returns an instance of AsyncDataState<MemberShipCheckResult> with the appropriate failure data. If it doesn't,
    /// you'll need to modify it accordingly to ensure the types match correctly.
        (result) => AsyncDataState.loaded(result),  ///changed from "(result) => ActionStateSuccess(result),"

    ///Ensure that AsyncDataState.loaded returns an instance of AsyncDataState<MemberShipCheckResult> with the appropriate success data. If it doesn't,
    /// you'll need to modify it accordingly to ensure the types match correctly.
  );
}
}
