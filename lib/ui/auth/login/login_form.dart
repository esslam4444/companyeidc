import 'package:companyeidc/application/local/local_storage.dart';
import 'package:companyeidc/application/repositories/auth_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/login_credentials.dart';
import 'package:companyeidc/shared/state/action_state.dart';
import 'package:companyeidc/ui/auth/account_controller.dart';
import 'package:companyeidc/ui/shared/shared_prefs_notifier.dart';
import 'package:event_bus/event_bus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

final loginFormProvider = StateNotifierProvider.autoDispose<LoginFormController, ActionState<void>>(
  (ref) => ref.resolve<LoginFormController>(),
);

@injectable
class LoginFormController extends StateController<ActionState<void>> {
  LoginFormController(
    this.repository,
    this.localStorage,
    this.eventBus,
  ) : super(const ActionState.initial());

  final userName = FormControl<String>(validators: [Validators.required]);
  final password = FormControl<String>(validators: [Validators.required]);
  final firebaseId = FormControl<String>();

  final AuthRepository repository;
  final LocalStorage localStorage;
  final EventBus eventBus;

  late final form = FormGroup({'username': userName, 'password': password, 'firebaseId': firebaseId});

  init() {
    FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    _firebaseMessaging.getToken().then((token) async {
      firebaseId.value = token ?? '';
    });
  }

  Future submit() async {
    state = const ActionState.loading();

    final result = await repository.authenticate(
      credentials: LoginCredentials.fromJson(form.value),
    );
    result.match(
      (failure) {
        state = ActionStateFailure(failure);
      },
      (result) async {
        await localStorage.set<String>(LocalPrefKeys.token, result);
        eventBus.fire(const LoadAccountEvent());
        state = const ActionStateSuccess(null);
      },
    );
  }

  void reset() {
    state = const ActionState.initial();
  }
}
