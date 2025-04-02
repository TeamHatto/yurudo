// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_task_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewTaskPageState {

 TaskType get taskType; String get name; int? get span; Category? get category; int? get time; DateTime? get firstDay; dynamic get hasError; dynamic get errorMessage;
/// Create a copy of NewTaskPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewTaskPageStateCopyWith<NewTaskPageState> get copyWith => _$NewTaskPageStateCopyWithImpl<NewTaskPageState>(this as NewTaskPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewTaskPageState&&(identical(other.taskType, taskType) || other.taskType == taskType)&&(identical(other.name, name) || other.name == name)&&(identical(other.span, span) || other.span == span)&&(identical(other.category, category) || other.category == category)&&(identical(other.time, time) || other.time == time)&&(identical(other.firstDay, firstDay) || other.firstDay == firstDay)&&const DeepCollectionEquality().equals(other.hasError, hasError)&&const DeepCollectionEquality().equals(other.errorMessage, errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,taskType,name,span,category,time,firstDay,const DeepCollectionEquality().hash(hasError),const DeepCollectionEquality().hash(errorMessage));

@override
String toString() {
  return 'NewTaskPageState(taskType: $taskType, name: $name, span: $span, category: $category, time: $time, firstDay: $firstDay, hasError: $hasError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NewTaskPageStateCopyWith<$Res>  {
  factory $NewTaskPageStateCopyWith(NewTaskPageState value, $Res Function(NewTaskPageState) _then) = _$NewTaskPageStateCopyWithImpl;
@useResult
$Res call({
 TaskType taskType, String name, int? span, Category? category, int? time, DateTime? firstDay, dynamic hasError, dynamic errorMessage
});


$CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$NewTaskPageStateCopyWithImpl<$Res>
    implements $NewTaskPageStateCopyWith<$Res> {
  _$NewTaskPageStateCopyWithImpl(this._self, this._then);

  final NewTaskPageState _self;
  final $Res Function(NewTaskPageState) _then;

/// Create a copy of NewTaskPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskType = null,Object? name = null,Object? span = freezed,Object? category = freezed,Object? time = freezed,Object? firstDay = freezed,Object? hasError = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
taskType: null == taskType ? _self.taskType : taskType // ignore: cast_nullable_to_non_nullable
as TaskType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,span: freezed == span ? _self.span : span // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,firstDay: freezed == firstDay ? _self.firstDay : firstDay // ignore: cast_nullable_to_non_nullable
as DateTime?,hasError: freezed == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as dynamic,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of NewTaskPageState
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


class _NewTaskPageState implements NewTaskPageState {
  const _NewTaskPageState({required this.taskType, required this.name, required this.span, this.category = null, this.time = null, required this.firstDay, this.hasError = false, this.errorMessage = ''});
  

@override final  TaskType taskType;
@override final  String name;
@override final  int? span;
@override@JsonKey() final  Category? category;
@override@JsonKey() final  int? time;
@override final  DateTime? firstDay;
@override@JsonKey() final  dynamic hasError;
@override@JsonKey() final  dynamic errorMessage;

/// Create a copy of NewTaskPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewTaskPageStateCopyWith<_NewTaskPageState> get copyWith => __$NewTaskPageStateCopyWithImpl<_NewTaskPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewTaskPageState&&(identical(other.taskType, taskType) || other.taskType == taskType)&&(identical(other.name, name) || other.name == name)&&(identical(other.span, span) || other.span == span)&&(identical(other.category, category) || other.category == category)&&(identical(other.time, time) || other.time == time)&&(identical(other.firstDay, firstDay) || other.firstDay == firstDay)&&const DeepCollectionEquality().equals(other.hasError, hasError)&&const DeepCollectionEquality().equals(other.errorMessage, errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,taskType,name,span,category,time,firstDay,const DeepCollectionEquality().hash(hasError),const DeepCollectionEquality().hash(errorMessage));

@override
String toString() {
  return 'NewTaskPageState(taskType: $taskType, name: $name, span: $span, category: $category, time: $time, firstDay: $firstDay, hasError: $hasError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NewTaskPageStateCopyWith<$Res> implements $NewTaskPageStateCopyWith<$Res> {
  factory _$NewTaskPageStateCopyWith(_NewTaskPageState value, $Res Function(_NewTaskPageState) _then) = __$NewTaskPageStateCopyWithImpl;
@override @useResult
$Res call({
 TaskType taskType, String name, int? span, Category? category, int? time, DateTime? firstDay, dynamic hasError, dynamic errorMessage
});


@override $CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$NewTaskPageStateCopyWithImpl<$Res>
    implements _$NewTaskPageStateCopyWith<$Res> {
  __$NewTaskPageStateCopyWithImpl(this._self, this._then);

  final _NewTaskPageState _self;
  final $Res Function(_NewTaskPageState) _then;

/// Create a copy of NewTaskPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taskType = null,Object? name = null,Object? span = freezed,Object? category = freezed,Object? time = freezed,Object? firstDay = freezed,Object? hasError = freezed,Object? errorMessage = freezed,}) {
  return _then(_NewTaskPageState(
taskType: null == taskType ? _self.taskType : taskType // ignore: cast_nullable_to_non_nullable
as TaskType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,span: freezed == span ? _self.span : span // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,firstDay: freezed == firstDay ? _self.firstDay : firstDay // ignore: cast_nullable_to_non_nullable
as DateTime?,hasError: freezed == hasError ? _self.hasError! : hasError ,errorMessage: freezed == errorMessage ? _self.errorMessage! : errorMessage ,
  ));
}

/// Create a copy of NewTaskPageState
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

// dart format on
