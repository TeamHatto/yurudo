import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:routine_app/core/enums/TaskType.dart';
import 'package:routine_app/core/utils/contextEx.dart';
import 'package:routine_app/core/utils/date.dart';
import 'package:routine_app/repository/todo/todo_provider.dart';

import '../../../../repository/todo/todo.dart';

part 'next_schedule_state.freezed.dart';

final nextScheduleStateProvider = StateNotifierProvider.autoDispose
    .family<NextScheduleStateNotifier, NextScheduleState, NextScheduleArgs>((
      ref,
      args,
    ) {
      return NextScheduleStateNotifier(args, ref);
    });

class NextScheduleStateNotifier extends StateNotifier<NextScheduleState> {
  NextScheduleStateNotifier(this.args, this.ref)
    : super(
        NextScheduleState(
          taskType:
              args.todo.span == null ? TaskType.single : TaskType.recurring,
          selectDay: args.completeDay.add(Duration(days: args.todo.span ?? 1)),
          completeDay: DateTime.now(),
        ),
      );

  final NextScheduleArgs args;
  final Ref ref;

  void changeDate(DateTime date) {
    state = state.copyWith(selectDay: date);
  }

  void setCompleteDay(DateTime date, int span) {
    state = state.copyWith(
      completeDay: date,
      selectDay: date.add(Duration(days: span)),
    );
  }

  void setError(bool error, {String msg = ''}) {
    state = state.copyWith(hasError: error, errorMessage: msg);
  }

  void onClickOk(BuildContext context) {
    if (!state.selectDay.isAfterDay(state.completeDay)) {
      setError(true, msg: context.l10n.afterCompleteDay);
      return;
    }

    switch (state.taskType) {
      case TaskType.recurring:
        ref
            .read(todoProvider.notifier)
            .complete(
              todo: args.todo,
              completeDay: state.completeDay,
              nextDay: state.selectDay,
            );
      case TaskType.single:
        ref
            .read(todoProvider.notifier)
            .complete(
              todo: args.todo,
              completeDay: state.completeDay,
              nextDay: null,
            );
    }
    Navigator.pop(context);
  }
}

@freezed
abstract class NextScheduleArgs with _$NextScheduleArgs {
  const factory NextScheduleArgs({
    required Todo todo,
    required DateTime completeDay,
  }) = _NextScheduleArgs;
}

@freezed
abstract class NextScheduleState with _$NextScheduleState {
  const factory NextScheduleState({
    required TaskType taskType,
    required DateTime selectDay,
    required DateTime completeDay,
    @Default(false) bool hasError,
    @Default('') String errorMessage,
  }) = _NextScheduleState;
}
