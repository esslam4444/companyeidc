// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

  AccountStateLoaded loaded(UserAccount user) {
    return AccountStateLoaded(
      user,
    );
  }

  AccountStateFailure failure(Failure value) {
    return AccountStateFailure(
      value,
    );
  }

  AcountStateLoading loading() {
    return const AcountStateLoading();
  }

  AcountStateUnAthenticated unAuthenticated() {
    return const AcountStateUnAthenticated();
  }
}

/// @nodoc
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount user) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateLoaded value) loaded,
    required TResult Function(AccountStateFailure value) failure,
    required TResult Function(AcountStateLoading value) loading,
    required TResult Function(AcountStateUnAthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;
}

/// @nodoc
abstract class $AccountStateLoadedCopyWith<$Res> {
  factory $AccountStateLoadedCopyWith(
          AccountStateLoaded value, $Res Function(AccountStateLoaded) then) =
      _$AccountStateLoadedCopyWithImpl<$Res>;
  $Res call({UserAccount user});
}

/// @nodoc
class _$AccountStateLoadedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountStateLoadedCopyWith<$Res> {
  _$AccountStateLoadedCopyWithImpl(
      AccountStateLoaded _value, $Res Function(AccountStateLoaded) _then)
      : super(_value, (v) => _then(v as AccountStateLoaded));

  @override
  AccountStateLoaded get _value => super._value as AccountStateLoaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AccountStateLoaded(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAccount,
    ));
  }
}

/// @nodoc

class _$AccountStateLoaded extends AccountStateLoaded {
  const _$AccountStateLoaded(this.user) : super._();

  @override
  final UserAccount user;

  @override
  String toString() {
    return 'AccountState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountStateLoaded &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $AccountStateLoadedCopyWith<AccountStateLoaded> get copyWith =>
      _$AccountStateLoadedCopyWithImpl<AccountStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount user) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateLoaded value) loaded,
    required TResult Function(AccountStateFailure value) failure,
    required TResult Function(AcountStateLoading value) loading,
    required TResult Function(AcountStateUnAthenticated value) unAuthenticated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AccountStateLoaded extends AccountState {
  const factory AccountStateLoaded(UserAccount user) = _$AccountStateLoaded;
  const AccountStateLoaded._() : super._();

  UserAccount get user;
  @JsonKey(ignore: true)
  $AccountStateLoadedCopyWith<AccountStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateFailureCopyWith<$Res> {
  factory $AccountStateFailureCopyWith(
          AccountStateFailure value, $Res Function(AccountStateFailure) then) =
      _$AccountStateFailureCopyWithImpl<$Res>;
  $Res call({Failure value});
}

/// @nodoc
class _$AccountStateFailureCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AccountStateFailureCopyWith<$Res> {
  _$AccountStateFailureCopyWithImpl(
      AccountStateFailure _value, $Res Function(AccountStateFailure) _then)
      : super(_value, (v) => _then(v as AccountStateFailure));

  @override
  AccountStateFailure get _value => super._value as AccountStateFailure;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AccountStateFailure(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AccountStateFailure extends AccountStateFailure {
  const _$AccountStateFailure(this.value) : super._();

  @override
  final Failure value;

  @override
  String toString() {
    return 'AccountState.failure(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountStateFailure &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $AccountStateFailureCopyWith<AccountStateFailure> get copyWith =>
      _$AccountStateFailureCopyWithImpl<AccountStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount user) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
  }) {
    return failure(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
  }) {
    return failure?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateLoaded value) loaded,
    required TResult Function(AccountStateFailure value) failure,
    required TResult Function(AcountStateLoading value) loading,
    required TResult Function(AcountStateUnAthenticated value) unAuthenticated,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AccountStateFailure extends AccountState {
  const factory AccountStateFailure(Failure value) = _$AccountStateFailure;
  const AccountStateFailure._() : super._();

  Failure get value;
  @JsonKey(ignore: true)
  $AccountStateFailureCopyWith<AccountStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcountStateLoadingCopyWith<$Res> {
  factory $AcountStateLoadingCopyWith(
          AcountStateLoading value, $Res Function(AcountStateLoading) then) =
      _$AcountStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AcountStateLoadingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AcountStateLoadingCopyWith<$Res> {
  _$AcountStateLoadingCopyWithImpl(
      AcountStateLoading _value, $Res Function(AcountStateLoading) _then)
      : super(_value, (v) => _then(v as AcountStateLoading));

  @override
  AcountStateLoading get _value => super._value as AcountStateLoading;
}

/// @nodoc

class _$AcountStateLoading extends AcountStateLoading {
  const _$AcountStateLoading() : super._();

  @override
  String toString() {
    return 'AccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AcountStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount user) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateLoaded value) loaded,
    required TResult Function(AccountStateFailure value) failure,
    required TResult Function(AcountStateLoading value) loading,
    required TResult Function(AcountStateUnAthenticated value) unAuthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AcountStateLoading extends AccountState {
  const factory AcountStateLoading() = _$AcountStateLoading;
  const AcountStateLoading._() : super._();
}

/// @nodoc
abstract class $AcountStateUnAthenticatedCopyWith<$Res> {
  factory $AcountStateUnAthenticatedCopyWith(AcountStateUnAthenticated value,
          $Res Function(AcountStateUnAthenticated) then) =
      _$AcountStateUnAthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AcountStateUnAthenticatedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AcountStateUnAthenticatedCopyWith<$Res> {
  _$AcountStateUnAthenticatedCopyWithImpl(AcountStateUnAthenticated _value,
      $Res Function(AcountStateUnAthenticated) _then)
      : super(_value, (v) => _then(v as AcountStateUnAthenticated));

  @override
  AcountStateUnAthenticated get _value =>
      super._value as AcountStateUnAthenticated;
}

/// @nodoc

class _$AcountStateUnAthenticated extends AcountStateUnAthenticated {
  const _$AcountStateUnAthenticated() : super._();

  @override
  String toString() {
    return 'AccountState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcountStateUnAthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount user) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount user)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateLoaded value) loaded,
    required TResult Function(AccountStateFailure value) failure,
    required TResult Function(AcountStateLoading value) loading,
    required TResult Function(AcountStateUnAthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateLoaded value)? loaded,
    TResult Function(AccountStateFailure value)? failure,
    TResult Function(AcountStateLoading value)? loading,
    TResult Function(AcountStateUnAthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AcountStateUnAthenticated extends AccountState {
  const factory AcountStateUnAthenticated() = _$AcountStateUnAthenticated;
  const AcountStateUnAthenticated._() : super._();
}
