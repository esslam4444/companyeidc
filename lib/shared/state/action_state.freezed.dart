// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'action_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActionStateTearOff {
  const _$ActionStateTearOff();

  ActionStateInitial<R> initial<R>([R? data]) {
    return ActionStateInitial<R>(
      data,
    );
  }

  ActionStateSuccess<R> success<R>(R data) {
    return ActionStateSuccess<R>(
      data,
    );
  }

  ActionStateFailure<R> failure<R>([Failure? failure, R? data]) {
    return ActionStateFailure<R>(
      failure,
      data,
    );
  }

  ActionStateLoading<R> loading<R>([R? data]) {
    return ActionStateLoading<R>(
      data,
    );
  }
}

/// @nodoc
const $ActionState = _$ActionStateTearOff();

/// @nodoc
mixin _$ActionState<R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R? data) initial,
    required TResult Function(R data) success,
    required TResult Function(Failure? failure, R? data) failure,
    required TResult Function(R? data) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateInitial<R> value) initial,
    required TResult Function(ActionStateSuccess<R> value) success,
    required TResult Function(ActionStateFailure<R> value) failure,
    required TResult Function(ActionStateLoading<R> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionStateCopyWith<R, $Res> {
  factory $ActionStateCopyWith(
          ActionState<R> value, $Res Function(ActionState<R>) then) =
      _$ActionStateCopyWithImpl<R, $Res>;
}

/// @nodoc
class _$ActionStateCopyWithImpl<R, $Res>
    implements $ActionStateCopyWith<R, $Res> {
  _$ActionStateCopyWithImpl(this._value, this._then);

  final ActionState<R> _value;
  // ignore: unused_field
  final $Res Function(ActionState<R>) _then;
}

/// @nodoc
abstract class $ActionStateInitialCopyWith<R, $Res> {
  factory $ActionStateInitialCopyWith(ActionStateInitial<R> value,
          $Res Function(ActionStateInitial<R>) then) =
      _$ActionStateInitialCopyWithImpl<R, $Res>;
  $Res call({R? data});
}

/// @nodoc
class _$ActionStateInitialCopyWithImpl<R, $Res>
    extends _$ActionStateCopyWithImpl<R, $Res>
    implements $ActionStateInitialCopyWith<R, $Res> {
  _$ActionStateInitialCopyWithImpl(
      ActionStateInitial<R> _value, $Res Function(ActionStateInitial<R>) _then)
      : super(_value, (v) => _then(v as ActionStateInitial<R>));

  @override
  ActionStateInitial<R> get _value => super._value as ActionStateInitial<R>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ActionStateInitial<R>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as R?,
    ));
  }
}

/// @nodoc

class _$ActionStateInitial<R> extends ActionStateInitial<R> {
  const _$ActionStateInitial([this.data]) : super._();

  @override
  final R? data;

  @override
  String toString() {
    return 'ActionState<$R>.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActionStateInitial<R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ActionStateInitialCopyWith<R, ActionStateInitial<R>> get copyWith =>
      _$ActionStateInitialCopyWithImpl<R, ActionStateInitial<R>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R? data) initial,
    required TResult Function(R data) success,
    required TResult Function(Failure? failure, R? data) failure,
    required TResult Function(R? data) loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateInitial<R> value) initial,
    required TResult Function(ActionStateSuccess<R> value) success,
    required TResult Function(ActionStateFailure<R> value) failure,
    required TResult Function(ActionStateLoading<R> value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ActionStateInitial<R> extends ActionState<R> {
  const factory ActionStateInitial([R? data]) = _$ActionStateInitial<R>;
  const ActionStateInitial._() : super._();

  R? get data;
  @JsonKey(ignore: true)
  $ActionStateInitialCopyWith<R, ActionStateInitial<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionStateSuccessCopyWith<R, $Res> {
  factory $ActionStateSuccessCopyWith(ActionStateSuccess<R> value,
          $Res Function(ActionStateSuccess<R>) then) =
      _$ActionStateSuccessCopyWithImpl<R, $Res>;
  $Res call({R data});
}

/// @nodoc
class _$ActionStateSuccessCopyWithImpl<R, $Res>
    extends _$ActionStateCopyWithImpl<R, $Res>
    implements $ActionStateSuccessCopyWith<R, $Res> {
  _$ActionStateSuccessCopyWithImpl(
      ActionStateSuccess<R> _value, $Res Function(ActionStateSuccess<R>) _then)
      : super(_value, (v) => _then(v as ActionStateSuccess<R>));

  @override
  ActionStateSuccess<R> get _value => super._value as ActionStateSuccess<R>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ActionStateSuccess<R>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$ActionStateSuccess<R> extends ActionStateSuccess<R> {
  const _$ActionStateSuccess(this.data) : super._();

  @override
  final R data;

  @override
  String toString() {
    return 'ActionState<$R>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActionStateSuccess<R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ActionStateSuccessCopyWith<R, ActionStateSuccess<R>> get copyWith =>
      _$ActionStateSuccessCopyWithImpl<R, ActionStateSuccess<R>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R? data) initial,
    required TResult Function(R data) success,
    required TResult Function(Failure? failure, R? data) failure,
    required TResult Function(R? data) loading,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateInitial<R> value) initial,
    required TResult Function(ActionStateSuccess<R> value) success,
    required TResult Function(ActionStateFailure<R> value) failure,
    required TResult Function(ActionStateLoading<R> value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ActionStateSuccess<R> extends ActionState<R> {
  const factory ActionStateSuccess(R data) = _$ActionStateSuccess<R>;
  const ActionStateSuccess._() : super._();

  R get data;
  @JsonKey(ignore: true)
  $ActionStateSuccessCopyWith<R, ActionStateSuccess<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionStateFailureCopyWith<R, $Res> {
  factory $ActionStateFailureCopyWith(ActionStateFailure<R> value,
          $Res Function(ActionStateFailure<R>) then) =
      _$ActionStateFailureCopyWithImpl<R, $Res>;
  $Res call({Failure? failure, R? data});
}

/// @nodoc
class _$ActionStateFailureCopyWithImpl<R, $Res>
    extends _$ActionStateCopyWithImpl<R, $Res>
    implements $ActionStateFailureCopyWith<R, $Res> {
  _$ActionStateFailureCopyWithImpl(
      ActionStateFailure<R> _value, $Res Function(ActionStateFailure<R>) _then)
      : super(_value, (v) => _then(v as ActionStateFailure<R>));

  @override
  ActionStateFailure<R> get _value => super._value as ActionStateFailure<R>;

  @override
  $Res call({
    Object? failure = freezed,
    Object? data = freezed,
  }) {
    return _then(ActionStateFailure<R>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as R?,
    ));
  }
}

/// @nodoc

class _$ActionStateFailure<R> extends ActionStateFailure<R> {
  const _$ActionStateFailure([this.failure, this.data]) : super._();

  @override
  final Failure? failure;
  @override
  final R? data;

  @override
  String toString() {
    return 'ActionState<$R>.failure(failure: $failure, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActionStateFailure<R> &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failure, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ActionStateFailureCopyWith<R, ActionStateFailure<R>> get copyWith =>
      _$ActionStateFailureCopyWithImpl<R, ActionStateFailure<R>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R? data) initial,
    required TResult Function(R data) success,
    required TResult Function(Failure? failure, R? data) failure,
    required TResult Function(R? data) loading,
  }) {
    return failure(this.failure, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
  }) {
    return failure?.call(this.failure, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateInitial<R> value) initial,
    required TResult Function(ActionStateSuccess<R> value) success,
    required TResult Function(ActionStateFailure<R> value) failure,
    required TResult Function(ActionStateLoading<R> value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ActionStateFailure<R> extends ActionState<R> {
  const factory ActionStateFailure([Failure? failure, R? data]) =
      _$ActionStateFailure<R>;
  const ActionStateFailure._() : super._();

  Failure? get failure;
  R? get data;
  @JsonKey(ignore: true)
  $ActionStateFailureCopyWith<R, ActionStateFailure<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionStateLoadingCopyWith<R, $Res> {
  factory $ActionStateLoadingCopyWith(ActionStateLoading<R> value,
          $Res Function(ActionStateLoading<R>) then) =
      _$ActionStateLoadingCopyWithImpl<R, $Res>;
  $Res call({R? data});
}

/// @nodoc
class _$ActionStateLoadingCopyWithImpl<R, $Res>
    extends _$ActionStateCopyWithImpl<R, $Res>
    implements $ActionStateLoadingCopyWith<R, $Res> {
  _$ActionStateLoadingCopyWithImpl(
      ActionStateLoading<R> _value, $Res Function(ActionStateLoading<R>) _then)
      : super(_value, (v) => _then(v as ActionStateLoading<R>));

  @override
  ActionStateLoading<R> get _value => super._value as ActionStateLoading<R>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ActionStateLoading<R>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as R?,
    ));
  }
}

/// @nodoc

class _$ActionStateLoading<R> extends ActionStateLoading<R> {
  const _$ActionStateLoading([this.data]) : super._();

  @override
  final R? data;

  @override
  String toString() {
    return 'ActionState<$R>.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActionStateLoading<R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ActionStateLoadingCopyWith<R, ActionStateLoading<R>> get copyWith =>
      _$ActionStateLoadingCopyWithImpl<R, ActionStateLoading<R>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R? data) initial,
    required TResult Function(R data) success,
    required TResult Function(Failure? failure, R? data) failure,
    required TResult Function(R? data) loading,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R? data)? initial,
    TResult Function(R data)? success,
    TResult Function(Failure? failure, R? data)? failure,
    TResult Function(R? data)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateInitial<R> value) initial,
    required TResult Function(ActionStateSuccess<R> value) success,
    required TResult Function(ActionStateFailure<R> value) failure,
    required TResult Function(ActionStateLoading<R> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateInitial<R> value)? initial,
    TResult Function(ActionStateSuccess<R> value)? success,
    TResult Function(ActionStateFailure<R> value)? failure,
    TResult Function(ActionStateLoading<R> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ActionStateLoading<R> extends ActionState<R> {
  const factory ActionStateLoading([R? data]) = _$ActionStateLoading<R>;
  const ActionStateLoading._() : super._();

  R? get data;
  @JsonKey(ignore: true)
  $ActionStateLoadingCopyWith<R, ActionStateLoading<R>> get copyWith =>
      throw _privateConstructorUsedError;
}
