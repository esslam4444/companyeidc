import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'async_data_state.freezed.dart';

@freezed
class AsyncDataState<T> with _$AsyncDataState<T> {
  const factory AsyncDataState.loaded(
    T value, {
    @Default(false) bool refreshing,
  }) = AsyncDataLoaded<T>;

  const factory AsyncDataState.failure(Failure value) = AsyncDataFailure<T>;

  const factory AsyncDataState.loading({@Default(true) bool isFirstLoading}) = AsyncDataLoading<T>;

  const AsyncDataState._();

  bool get isLoading => this is AsyncDataLoading<T>;

  bool get isLoadedOrFailure => isFailure || isLoaded;

  bool get isFailure => this is AsyncDataFailure<T>;

  bool get isLoaded => this is AsyncDataLoaded<T>;

  Option<AsyncDataLoaded<T>> get loadedOption => maybeMap(
        loaded: (loaded) => Option.of(loaded),
        orElse: () => Option.none(),
      );

  Option<T> get valueOption => loadedOption.map((t) => t.value);
}
