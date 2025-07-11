import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repository/category/category.dart';
import '../../repository/category/category_provider.dart';
import '../../repository/todo/todo.dart';

part 'task_detail_page_state.freezed.dart';

final taskDetailPageStateProvider = StateNotifierProvider.family
    .autoDispose<TaskDetailPageStateNotifier, TaskDetailPageState, Todo>(
        (ref, todo) {
  if (todo.categoryId != null) {
    final category =
        ref.read(categoryProvider).firstWhere((e) => e.id == todo.categoryId);
    return TaskDetailPageStateNotifier(todo, category);
  }
  return TaskDetailPageStateNotifier(todo, null);
});

class TaskDetailPageStateNotifier extends StateNotifier<TaskDetailPageState> {
  TaskDetailPageStateNotifier(
    Todo todo,
    Category? category,
  ) : super(TaskDetailPageState(
          title: todo.name,
          span: todo.span,
          remind: todo.remind,
          category: category,
          time: todo.time,
          nextDay: todo.expectedDate,
        ));

  void setName(String name) {
    state = state.copyWith(title: name);
  }

  void setSpan(int span) {
    state = state.copyWith(span: span);
  }

  void setRemind(bool remind) {
    state = state.copyWith(remind: remind);
  }

  void setCategory(Category? category) {
    state = state.copyWith(category: category);
  }

  void setTime(int? time) {
    state = state.copyWith(time: time);
  }

  void setNextDay(DateTime? nextDay) {
    state = state.copyWith(nextDay: nextDay);
  }
}

@freezed
abstract class TaskDetailPageState with _$TaskDetailPageState {
  const factory TaskDetailPageState({
    required String title,
    required int? span,
    required bool remind,
    required Category? category,
    required int? time,
    required DateTime? nextDay,
  }) = _TaskDetailPageState;
}

@freezed
abstract class TaskDetailPageArgs with _$TaskDetailPageArgs {
  const factory TaskDetailPageArgs({
    required Todo todo,
    required bool isCompleted,
  }) = _TaskDetailPageArgs;
}
