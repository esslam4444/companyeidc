import 'package:companyeidc/application/local/local_storage.dart';
import 'package:companyeidc/application/repositories/auth_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/ui/shared/shared_prefs_notifier.dart';
import 'package:event_bus/event_bus.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

import 'account_state.dart';

final accountProvider = StateNotifierProvider.autoDispose<AccountController, AccountState>(
  (ref) => ref.resolve<AccountController>()..fetch(),
);

@injectable
class AccountController extends StateController<AccountState> {
  AccountController(
    this.repository,
    this.localStorage,
    EventBus eventBus,
  ) : super(const AccountState.unAuthenticated()) {
    eventBus.on<LoadAccountEvent>().listen(
          (_) => fetch(checkTokenFirst: false),
        );
  }

  final AuthRepository repository;
  final LocalStorage localStorage;

  Future fetch({bool checkTokenFirst = true}) async {
    if (checkTokenFirst && !localStorage.keyExists(LocalPrefKeys.token)) {
      state = const AccountState.unAuthenticated();
      return;
    }
    state = const AccountState.loading();
    final result = await repository.getAccount();
    state = result.match(
      (failure) => AccountState.failure(failure),
      (result) => AccountState.loaded(result),
    );
  }

  Future logout() async {
    localStorage.remove(LocalPrefKeys.token);
    state = const AccountState.unAuthenticated();
    return;
  }
}

class LoadAccountEvent {
  const LoadAccountEvent();
}
