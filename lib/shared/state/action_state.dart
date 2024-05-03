import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'action_state.freezed.dart';

@freezed
class ActionState<R> with _$ActionState<R> {
  const ActionState._();

  const factory ActionState.initial([R? data]) = ActionStateInitial<R>;

  const factory ActionState.success(R data) = ActionStateSuccess<R>;

  const factory ActionState.failure([Failure? failure, R? data]) = ActionStateFailure<R>;

  const factory ActionState.loading([R? data]) = ActionStateLoading<R>;

  bool get isLoading => this is ActionStateLoading<R>;

  bool get isFailure => this is ActionStateFailure<R>;

  bool get isSuccess => this is ActionStateSuccess<R>;

  Option<R> get dataOption => when(
        initial: (data) => Option.fromNullable(data),
        failure: (_, data) => Option.fromNullable(data),
        success: (data) => Option.of(data),
        loading: (data) => Option.fromNullable(data),
      );
}
