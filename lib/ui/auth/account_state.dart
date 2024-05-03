import 'package:companyeidc/shared/models/user_account.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.loaded(UserAccount user) = AccountStateLoaded;

  const factory AccountState.failure(
    Failure value,
  ) = AccountStateFailure;

  const factory AccountState.loading() = AcountStateLoading;

  const factory AccountState.unAuthenticated() = AcountStateUnAthenticated;

  const AccountState._();

  bool get isLoading => this is AcountStateLoading;

  bool get isCompleted => isFailure || isLoaded;

  bool get isFailure => this is AccountStateFailure;

  bool get isLoaded => this is AccountStateLoaded;

  bool get isAuthenticated => this is! AcountStateUnAthenticated;

  Option<AccountStateLoaded> get loadedOption => maybeMap(
        loaded: (loaded) => Option.of(loaded),
        orElse: () => Option.none(),
      );
}
