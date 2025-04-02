// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_schedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NextScheduleArgs {

 Todo get todo; DateTime get completeDay;
/// Create a copy of NextScheduleArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NextScheduleArgsCopyWith<NextScheduleArgs> get copyWith => _$NextScheduleArgsCopyWithImpl<NextScheduleArgs>(this as NextScheduleArgs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextScheduleArgs&&(identical(other.todo, todo) || other.todo == todo)&&(identical(other.completeDay, completeDay) || other.completeDay == completeDay));
}


@override
int get hashCode => Object.hash(runtimeType,todo,completeDay);

@override
String toString() {
  return 'NextScheduleArgs(todo: $todo, completeDay: $completeDay)';
}


}

/// @nodoc
abstract mixin class $NextScheduleArgsCopyWith<$Res>  {
  factory $NextScheduleArgsCopyWith(NextScheduleArgs value, $Res Function(NextScheduleArgs) _then) = _$NextScheduleArgsCopyWithImpl;
@useResult
$Res call({
 Todo todo, DateTime completeDay
});




}
/// @nodoc
class _$NextScheduleArgsCopyWithImpl<$Res>
    implements $NextScheduleArgsCopyWith<$Res> {
  _$NextScheduleArgsCopyWithImpl(this._self, this._then);

  final NextScheduleArgs _self;
  final $Res Function(NextScheduleArgs) _then;

/// Create a copy of NextScheduleArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todo = null,Object? completeDay = null,}) {
  return _then(_self.copyWith(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,completeDay: null == completeDay ? _self.completeDay : completeDay // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc


class _NextScheduleArgs implements NextScheduleArgs {
  const _NextScheduleArgs({required this.todo, required this.completeDay});
  

@override final  Todo todo;
@override final  DateTime completeDay;

/// Create a copy of NextScheduleArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NextScheduleArgsCopyWith<_NextScheduleArgs> get copyWith => __$NextScheduleArgsCopyWithImpl<_NextScheduleArgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextScheduleArgs&&(identical(other.todo, todo) || other.todo == todo)&&(identical(other.completeDay, completeDay) || other.completeDay == completeDay));
}


@override
int get hashCode => Object.hash(runtimeType,todo,completeDay);

@override
String toString() {
  return 'NextScheduleArgs(todo: $todo, completeDay: $completeDay)';
}


}

/// @nodoc
abstract mixin class _$NextScheduleArgsCopyWith<$Res> implements $NextScheduleArgsCopyWith<$Res> {
  factory _$NextScheduleArgsCopyWith(_NextScheduleArgs value, $Res Function(_NextScheduleArgs) _then) = __$NextScheduleArgsCopyWithImpl;
@override @useResult
$Res call({
 Todo todo, DateTime completeDay
});




}
/// @nodoc
class __$NextScheduleArgsCopyWithImpl<$Res>
    implements _$NextScheduleArgsCopyWith<$Res> {
  __$NextScheduleArgsCopyWithImpl(this._self, this._then);

  final _NextScheduleArgs _self;
  final $Res Function(_NextScheduleArgs) _then;

/// Create a copy of NextScheduleArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todo = null,Object? completeDay = null,}) {
  return _then(_NextScheduleArgs(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,completeDay: null == completeDay ? _self.completeDay : completeDay // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$NextScheduleState {

 DateTime get displayMonth; DateTime get selectDay; DateTime get completeDay; bool get hasError; String get errorMessage;
/// Create a copy of NextScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NextScheduleStateCopyWith<NextScheduleState> get copyWith => _$NextScheduleStateCopyWithImpl<NextScheduleState>(this as NextScheduleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextScheduleState&&(identical(other.displayMonth, displayMonth) || other.displayMonth == displayMonth)&&(identical(other.selectDay, selectDay) || other.selectDay == selectDay)&&(identical(other.completeDay, completeDay) || other.completeDay == completeDay)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,displayMonth,selectDay,completeDay,hasError,errorMessage);

@override
String toString() {
  return 'NextScheduleState(displayMonth: $displayMonth, selectDay: $selectDay, completeDay: $completeDay, hasError: $hasError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NextScheduleStateCopyWith<$Res>  {
  factory $NextScheduleStateCopyWith(NextScheduleState value, $Res Function(NextScheduleState) _then) = _$NextScheduleStateCopyWithImpl;
@useResult
$Res call({
 DateTime displayMonth, DateTime selectDay, DateTime completeDay, bool hasError, String errorMessage
});




}
/// @nodoc
class _$NextScheduleStateCopyWithImpl<$Res>
    implements $NextScheduleStateCopyWith<$Res> {
  _$NextScheduleStateCopyWithImpl(this._self, this._then);

  final NextScheduleState _self;
  final $Res Function(NextScheduleState) _then;

/// Create a copy of NextScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayMonth = null,Object? selectDay = null,Object? completeDay = null,Object? hasError = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
displayMonth: null == displayMonth ? _self.displayMonth : displayMonth // ignore: cast_nullable_to_non_nullable
as DateTime,selectDay: null == selectDay ? _self.selectDay : selectDay // ignore: cast_nullable_to_non_nullable
as DateTime,completeDay: null == completeDay ? _self.completeDay : completeDay // ignore: cast_nullable_to_non_nullable
as DateTime,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _NextScheduleState implements NextScheduleState {
  const _NextScheduleState({required this.displayMonth, required this.selectDay, required this.completeDay, this.hasError = false, this.errorMessage = ''});
  

@override final  DateTime displayMonth;
@override final  DateTime selectDay;
@override final  DateTime completeDay;
@override@JsonKey() final  bool hasError;
@override@JsonKey() final  String errorMessage;

/// Create a copy of NextScheduleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NextScheduleStateCopyWith<_NextScheduleState> get copyWith => __$NextScheduleStateCopyWithImpl<_NextScheduleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextScheduleState&&(identical(other.displayMonth, displayMonth) || other.displayMonth == displayMonth)&&(identical(other.selectDay, selectDay) || other.selectDay == selectDay)&&(identical(other.completeDay, completeDay) || other.completeDay == completeDay)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,displayMonth,selectDay,completeDay,hasError,errorMessage);

@override
String toString() {
  return 'NextScheduleState(displayMonth: $displayMonth, selectDay: $selectDay, completeDay: $completeDay, hasError: $hasError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NextScheduleStateCopyWith<$Res> implements $NextScheduleStateCopyWith<$Res> {
  factory _$NextScheduleStateCopyWith(_NextScheduleState value, $Res Function(_NextScheduleState) _then) = __$NextScheduleStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime displayMonth, DateTime selectDay, DateTime completeDay, bool hasError, String errorMessage
});




}
/// @nodoc
class __$NextScheduleStateCopyWithImpl<$Res>
    implements _$NextScheduleStateCopyWith<$Res> {
  __$NextScheduleStateCopyWithImpl(this._self, this._then);

  final _NextScheduleState _self;
  final $Res Function(_NextScheduleState) _then;

/// Create a copy of NextScheduleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayMonth = null,Object? selectDay = null,Object? completeDay = null,Object? hasError = null,Object? errorMessage = null,}) {
  return _then(_NextScheduleState(
displayMonth: null == displayMonth ? _self.displayMonth : displayMonth // ignore: cast_nullable_to_non_nullable
as DateTime,selectDay: null == selectDay ? _self.selectDay : selectDay // ignore: cast_nullable_to_non_nullable
as DateTime,completeDay: null == completeDay ? _self.completeDay : completeDay // ignore: cast_nullable_to_non_nullable
as DateTime,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
