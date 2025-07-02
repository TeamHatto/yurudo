import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:routine_app/core/enums/TaskType.dart';
import 'package:routine_app/core/services/ad_service.dart';
import 'package:routine_app/core/utils/contextEx.dart';
import 'package:routine_app/core/utils/date.dart';
import 'package:routine_app/repository/todo/todo_provider.dart';

import '../../repository/category/category.dart';

part 'new_task_page_state.freezed.dart';

final newTaskPageStateProvider = StateNotifierProvider.autoDispose<
  NewTaskPageStateNotifier,
  NewTaskPageState
>((ref) {
  return NewTaskPageStateNotifier(ref);
});

class NewTaskPageStateNotifier extends StateNotifier<NewTaskPageState> {
  NewTaskPageStateNotifier(this.ref)
    : super(
        const NewTaskPageState(
          taskType: TaskType.recurring,
          name: '',
          span: null,
          firstDay: null,
        ),
      );

  final Ref ref;

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setSpan(int span) {
    state = state.copyWith(span: span);
  }

  void setCategory(Category? category) {
    state = state.copyWith(category: category);
  }

  void setTime(int? time) {
    state = state.copyWith(time: time);
  }

  void setDate(DateTime firstDay) {
    state = state.copyWith(firstDay: firstDay);
  }

  void setHasError(bool error, String message) {
    state = state.copyWith(hasError: error, errorMessage: message);
  }

  void onChangeTaskType(TaskType type) {
    state = state.copyWith(taskType: type);
  }

  void onClickCreate(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();

    // 共通のエラーチェック
    if (state.name.isEmpty || state.firstDay == null) {
      state = state.copyWith(
        hasError: true,
        errorMessage: context.l10n.noRequired,
      );
      return;
    }

    // 繰り返しならスパンもエラーチェック
    if (state.taskType == TaskType.recurring && state.span == null) {
      state = state.copyWith(
        hasError: true,
        errorMessage: context.l10n.noRequired,
      );
      return;
    }

    if (state.firstDay!.isBeforeDay(DateTime.now())) {
      state = state.copyWith(
        hasError: true,
        errorMessage: context.l10n.cantSelectAfterToday,
      );
      return;
    }

    ref.read(todoProvider.notifier).create(
      name: state.name,
      span: (state.taskType == TaskType.recurring) ? state.span : null,
      firstDay: state.firstDay!,
      categoryId: state.category?.id,
      time: state.time,
    );

    ref.read(adServiceProvider).showInterstitial();

    Navigator.pop(context);
  }
}

@freezed
abstract class NewTaskPageState with _$NewTaskPageState {
  const factory NewTaskPageState({
    required TaskType taskType,
    required String name,
    required int? span,
    @Default(null) Category? category,
    @Default(null) int? time,
    required DateTime? firstDay,
    @Default(false) hasError,
    @Default('') errorMessage,
  }) = _NewTaskPageState;
}
