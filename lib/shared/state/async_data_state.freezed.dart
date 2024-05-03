// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'async_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AsyncDataStateTearOff {
  const _$AsyncDataStateTearOff();

  AsyncDataLoaded<T> loaded<T>(T value, {bool refreshing = false}) {
    return AsyncDataLoaded<T>(
      value,
      refreshing: refreshing,
    );
  }

  AsyncDataFailure<T> failure<T>(Failure value) {
    return AsyncDataFailure<T>(
      value,
    );
  }

  AsyncDataLoading<T> loading<T>({bool isFirstLoading = true}) {
    return AsyncDataLoading<T>(
      isFirstLoading: isFirstLoading,
    );
  }
}

/// @nodoc
const $AsyncDataState = _$AsyncDataStateTearOff();

/// @nodoc
mixin _$AsyncDataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, bool refreshing) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function(bool isFirstLoading) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncDataLoaded<T> value) loaded,
    required TResult Function(AsyncDataFailure<T> value) failure,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncDataStateCopyWith<T, $Res> {
  factory $AsyncDataStateCopyWith(
          AsyncDataState<T> value, $Res Function(AsyncDataState<T>) then) =
      _$AsyncDataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AsyncDataStateCopyWithImpl<T, $Res>
    implements $AsyncDataStateCopyWith<T, $Res> {
  _$AsyncDataStateCopyWithImpl(this._value, this._then);

  final AsyncDataState<T> _value;
  // ignore: unused_field
  final $Res Function(AsyncDataState<T>) _then;
}

/// @nodoc
abstract class $AsyncDataLoadedCopyWith<T, $Res> {
  factory $AsyncDataLoadedCopyWith(
          AsyncDataLoaded<T> value, $Res Function(AsyncDataLoaded<T>) then) =
      _$AsyncDataLoadedCopyWithImpl<T, $Res>;
  $Res call({T value, bool refreshing});
}

/// @nodoc
class _$AsyncDataLoadedCopyWithImpl<T, $Res>
    extends _$AsyncDataStateCopyWithImpl<T, $Res>
    implements $AsyncDataLoadedCopyWith<T, $Res> {
  _$AsyncDataLoadedCopyWithImpl(
      AsyncDataLoaded<T> _value, $Res Function(AsyncDataLoaded<T>) _then)
      : super(_value, (v) => _then(v as AsyncDataLoaded<T>));

  @override
  AsyncDataLoaded<T> get _value => super._value as AsyncDataLoaded<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? refreshing = freezed,
  }) {
    return _then(AsyncDataLoaded<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AsyncDataLoaded<T> extends AsyncDataLoaded<T> {
  const _$AsyncDataLoaded(this.value, {this.refreshing = false}) : super._();

  @override
  final T value;
  @JsonKey(defaultValue: false)
  @override
  final bool refreshing;

  @override
  String toString() {
    return 'AsyncDataState<$T>.loaded(value: $value, refreshing: $refreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncDataLoaded<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.refreshing, refreshing) ||
                other.refreshing == refreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), refreshing);

  @JsonKey(ignore: true)
  @override
  $AsyncDataLoadedCopyWith<T, AsyncDataLoaded<T>> get copyWith =>
      _$AsyncDataLoadedCopyWithImpl<T, AsyncDataLoaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, bool refreshing) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function(bool isFirstLoading) loading,
  }) {
    return loaded(value, refreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
  }) {
    return loaded?.call(value, refreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(value, refreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncDataLoaded<T> value) loaded,
    required TResult Function(AsyncDataFailure<T> value) failure,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AsyncDataLoaded<T> extends AsyncDataState<T> {
  const factory AsyncDataLoaded(T value, {bool refreshing}) =
      _$AsyncDataLoaded<T>;
  const AsyncDataLoaded._() : super._();

  T get value;
  bool get refreshing;
  @JsonKey(ignore: true)
  $AsyncDataLoadedCopyWith<T, AsyncDataLoaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncDataFailureCopyWith<T, $Res> {
  factory $AsyncDataFailureCopyWith(
          AsyncDataFailure<T> value, $Res Function(AsyncDataFailure<T>) then) =
      _$AsyncDataFailureCopyWithImpl<T, $Res>;
  $Res call({Failure value});
}

/// @nodoc
class _$AsyncDataFailureCopyWithImpl<T, $Res>
    extends _$AsyncDataStateCopyWithImpl<T, $Res>
    implements $AsyncDataFailureCopyWith<T, $Res> {
  _$AsyncDataFailureCopyWithImpl(
      AsyncDataFailure<T> _value, $Res Function(AsyncDataFailure<T>) _then)
      : super(_value, (v) => _then(v as AsyncDataFailure<T>));

  @override
  AsyncDataFailure<T> get _value => super._value as AsyncDataFailure<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AsyncDataFailure<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AsyncDataFailure<T> extends AsyncDataFailure<T> {
  const _$AsyncDataFailure(this.value) : super._();

  @override
  final Failure value;

  @override
  String toString() {
    return 'AsyncDataState<$T>.failure(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncDataFailure<T> &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $AsyncDataFailureCopyWith<T, AsyncDataFailure<T>> get copyWith =>
      _$AsyncDataFailureCopyWithImpl<T, AsyncDataFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, bool refreshing) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function(bool isFirstLoading) loading,
  }) {
    return failure(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
  }) {
    return failure?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
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
    required TResult Function(AsyncDataLoaded<T> value) loaded,
    required TResult Function(AsyncDataFailure<T> value) failure,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AsyncDataFailure<T> extends AsyncDataState<T> {
  const factory AsyncDataFailure(Failure value) = _$AsyncDataFailure<T>;
  const AsyncDataFailure._() : super._();

  Failure get value;
  @JsonKey(ignore: true)
  $AsyncDataFailureCopyWith<T, AsyncDataFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncDataLoadingCopyWith<T, $Res> {
  factory $AsyncDataLoadingCopyWith(
          AsyncDataLoading<T> value, $Res Function(AsyncDataLoading<T>) then) =
      _$AsyncDataLoadingCopyWithImpl<T, $Res>;
  $Res call({bool isFirstLoading});
}

/// @nodoc
class _$AsyncDataLoadingCopyWithImpl<T, $Res>
    extends _$AsyncDataStateCopyWithImpl<T, $Res>
    implements $AsyncDataLoadingCopyWith<T, $Res> {
  _$AsyncDataLoadingCopyWithImpl(
      AsyncDataLoading<T> _value, $Res Function(AsyncDataLoading<T>) _then)
      : super(_value, (v) => _then(v as AsyncDataLoading<T>));

  @override
  AsyncDataLoading<T> get _value => super._value as AsyncDataLoading<T>;

  @override
  $Res call({
    Object? isFirstLoading = freezed,
  }) {
    return _then(AsyncDataLoading<T>(
      isFirstLoading: isFirstLoading == freezed
          ? _value.isFirstLoading
          : isFirstLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AsyncDataLoading<T> extends AsyncDataLoading<T> {
  const _$AsyncDataLoading({this.isFirstLoading = true}) : super._();

  @JsonKey(defaultValue: true)
  @override
  final bool isFirstLoading;

  @override
  String toString() {
    return 'AsyncDataState<$T>.loading(isFirstLoading: $isFirstLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncDataLoading<T> &&
            (identical(other.isFirstLoading, isFirstLoading) ||
                other.isFirstLoading == isFirstLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstLoading);

  @JsonKey(ignore: true)
  @override
  $AsyncDataLoadingCopyWith<T, AsyncDataLoading<T>> get copyWith =>
      _$AsyncDataLoadingCopyWithImpl<T, AsyncDataLoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, bool refreshing) loaded,
    required TResult Function(Failure value) failure,
    required TResult Function(bool isFirstLoading) loading,
  }) {
    return loading(isFirstLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
  }) {
    return loading?.call(isFirstLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, bool refreshing)? loaded,
    TResult Function(Failure value)? failure,
    TResult Function(bool isFirstLoading)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isFirstLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncDataLoaded<T> value) loaded,
    required TResult Function(AsyncDataFailure<T> value) failure,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataLoaded<T> value)? loaded,
    TResult Function(AsyncDataFailure<T> value)? failure,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncDataLoading<T> extends AsyncDataState<T> {
  const factory AsyncDataLoading({bool isFirstLoading}) = _$AsyncDataLoading<T>;
  const AsyncDataLoading._() : super._();

  bool get isFirstLoading;
  @JsonKey(ignore: true)
  $AsyncDataLoadingCopyWith<T, AsyncDataLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
