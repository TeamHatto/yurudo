// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskDetailPageState {

 String get title; int? get span; bool get remind; Category? get category; int? get time; DateTime? get nextDay;
/// Create a copy of TaskDetailPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskDetailPageStateCopyWith<TaskDetailPageState> get copyWith => _$TaskDetailPageStateCopyWithImpl<TaskDetailPageState>(this as TaskDetailPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskDetailPageState&&(identical(other.title, title) || other.title == title)&&(identical(other.span, span) || other.span == span)&&(identical(other.remind, remind) || other.remind == remind)&&(identical(other.category, category) || other.category == category)&&(identical(other.time, time) || other.time == time)&&(identical(other.nextDay, nextDay) || other.nextDay == nextDay));
}


@override
int get hashCode => Object.hash(runtimeType,title,span,remind,category,time,nextDay);

@override
String toString() {
  return 'TaskDetailPageState(title: $title, span: $span, remind: $remind, category: $category, time: $time, nextDay: $nextDay)';
}


}

/// @nodoc
abstract mixin class $TaskDetailPageStateCopyWith<$Res>  {
  factory $TaskDetailPageStateCopyWith(TaskDetailPageState value, $Res Function(TaskDetailPageState) _then) = _$TaskDetailPageStateCopyWithImpl;
@useResult
$Res call({
 String title, int? span, bool remind, Category? category, int? time, DateTime? nextDay
});


$CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$TaskDetailPageStateCopyWithImpl<$Res>
    implements $TaskDetailPageStateCopyWith<$Res> {
  _$TaskDetailPageStateCopyWithImpl(this._self, this._then);

  final TaskDetailPageState _self;
  final $Res Function(TaskDetailPageState) _then;

/// Create a copy of TaskDetailPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? span = freezed,Object? remind = null,Object? category = freezed,Object? time = freezed,Object? nextDay = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,span: freezed == span ? _self.span : span // ignore: cast_nullable_to_non_nullable
as int?,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as bool,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,nextDay: freezed == nextDay ? _self.nextDay : nextDay // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of TaskDetailPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc


class _TaskDetailPageState implements TaskDetailPageState {
  const _TaskDetailPageState({required this.title, required this.span, required this.remind, required this.category, required this.time, required this.nextDay});
  

@override final  String title;
@override final  int? span;
@override final  bool remind;
@override final  Category? category;
@override final  int? time;
@override final  DateTime? nextDay;

/// Create a copy of TaskDetailPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskDetailPageStateCopyWith<_TaskDetailPageState> get copyWith => __$TaskDetailPageStateCopyWithImpl<_TaskDetailPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskDetailPageState&&(identical(other.title, title) || other.title == title)&&(identical(other.span, span) || other.span == span)&&(identical(other.remind, remind) || other.remind == remind)&&(identical(other.category, category) || other.category == category)&&(identical(other.time, time) || other.time == time)&&(identical(other.nextDay, nextDay) || other.nextDay == nextDay));
}


@override
int get hashCode => Object.hash(runtimeType,title,span,remind,category,time,nextDay);

@override
String toString() {
  return 'TaskDetailPageState(title: $title, span: $span, remind: $remind, category: $category, time: $time, nextDay: $nextDay)';
}


}

/// @nodoc
abstract mixin class _$TaskDetailPageStateCopyWith<$Res> implements $TaskDetailPageStateCopyWith<$Res> {
  factory _$TaskDetailPageStateCopyWith(_TaskDetailPageState value, $Res Function(_TaskDetailPageState) _then) = __$TaskDetailPageStateCopyWithImpl;
@override @useResult
$Res call({
 String title, int? span, bool remind, Category? category, int? time, DateTime? nextDay
});


@override $CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$TaskDetailPageStateCopyWithImpl<$Res>
    implements _$TaskDetailPageStateCopyWith<$Res> {
  __$TaskDetailPageStateCopyWithImpl(this._self, this._then);

  final _TaskDetailPageState _self;
  final $Res Function(_TaskDetailPageState) _then;

/// Create a copy of TaskDetailPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? span = freezed,Object? remind = null,Object? category = freezed,Object? time = freezed,Object? nextDay = freezed,}) {
  return _then(_TaskDetailPageState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,span: freezed == span ? _self.span : span // ignore: cast_nullable_to_non_nullable
as int?,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as bool,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,nextDay: freezed == nextDay ? _self.nextDay : nextDay // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of TaskDetailPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc
mixin _$TaskDetailPageArgs {

 Todo get todo; bool get isCompleted;
/// Create a copy of TaskDetailPageArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskDetailPageArgsCopyWith<TaskDetailPageArgs> get copyWith => _$TaskDetailPageArgsCopyWithImpl<TaskDetailPageArgs>(this as TaskDetailPageArgs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskDetailPageArgs&&(identical(other.todo, todo) || other.todo == todo)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,todo,isCompleted);

@override
String toString() {
  return 'TaskDetailPageArgs(todo: $todo, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $TaskDetailPageArgsCopyWith<$Res>  {
  factory $TaskDetailPageArgsCopyWith(TaskDetailPageArgs value, $Res Function(TaskDetailPageArgs) _then) = _$TaskDetailPageArgsCopyWithImpl;
@useResult
$Res call({
 Todo todo, bool isCompleted
});




}
/// @nodoc
class _$TaskDetailPageArgsCopyWithImpl<$Res>
    implements $TaskDetailPageArgsCopyWith<$Res> {
  _$TaskDetailPageArgsCopyWithImpl(this._self, this._then);

  final TaskDetailPageArgs _self;
  final $Res Function(TaskDetailPageArgs) _then;

/// Create a copy of TaskDetailPageArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todo = null,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _TaskDetailPageArgs implements TaskDetailPageArgs {
  const _TaskDetailPageArgs({required this.todo, required this.isCompleted});
  

@override final  Todo todo;
@override final  bool isCompleted;

/// Create a copy of TaskDetailPageArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskDetailPageArgsCopyWith<_TaskDetailPageArgs> get copyWith => __$TaskDetailPageArgsCopyWithImpl<_TaskDetailPageArgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskDetailPageArgs&&(identical(other.todo, todo) || other.todo == todo)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,todo,isCompleted);

@override
String toString() {
  return 'TaskDetailPageArgs(todo: $todo, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$TaskDetailPageArgsCopyWith<$Res> implements $TaskDetailPageArgsCopyWith<$Res> {
  factory _$TaskDetailPageArgsCopyWith(_TaskDetailPageArgs value, $Res Function(_TaskDetailPageArgs) _then) = __$TaskDetailPageArgsCopyWithImpl;
@override @useResult
$Res call({
 Todo todo, bool isCompleted
});




}
/// @nodoc
class __$TaskDetailPageArgsCopyWithImpl<$Res>
    implements _$TaskDetailPageArgsCopyWith<$Res> {
  __$TaskDetailPageArgsCopyWithImpl(this._self, this._then);

  final _TaskDetailPageArgs _self;
  final $Res Function(_TaskDetailPageArgs) _then;

/// Create a copy of TaskDetailPageArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todo = null,Object? isCompleted = null,}) {
  return _then(_TaskDetailPageArgs(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
