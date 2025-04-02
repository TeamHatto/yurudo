// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimeDialogState {

/// 選んでいる時間
 int get time;
/// Create a copy of TimeDialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeDialogStateCopyWith<TimeDialogState> get copyWith => _$TimeDialogStateCopyWithImpl<TimeDialogState>(this as TimeDialogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeDialogState&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,time);

@override
String toString() {
  return 'TimeDialogState(time: $time)';
}


}

/// @nodoc
abstract mixin class $TimeDialogStateCopyWith<$Res>  {
  factory $TimeDialogStateCopyWith(TimeDialogState value, $Res Function(TimeDialogState) _then) = _$TimeDialogStateCopyWithImpl;
@useResult
$Res call({
 int time
});




}
/// @nodoc
class _$TimeDialogStateCopyWithImpl<$Res>
    implements $TimeDialogStateCopyWith<$Res> {
  _$TimeDialogStateCopyWithImpl(this._self, this._then);

  final TimeDialogState _self;
  final $Res Function(TimeDialogState) _then;

/// Create a copy of TimeDialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _TimeDialogState implements TimeDialogState {
  const _TimeDialogState({this.time = 5});
  

/// 選んでいる時間
@override@JsonKey() final  int time;

/// Create a copy of TimeDialogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeDialogStateCopyWith<_TimeDialogState> get copyWith => __$TimeDialogStateCopyWithImpl<_TimeDialogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeDialogState&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,time);

@override
String toString() {
  return 'TimeDialogState(time: $time)';
}


}

/// @nodoc
abstract mixin class _$TimeDialogStateCopyWith<$Res> implements $TimeDialogStateCopyWith<$Res> {
  factory _$TimeDialogStateCopyWith(_TimeDialogState value, $Res Function(_TimeDialogState) _then) = __$TimeDialogStateCopyWithImpl;
@override @useResult
$Res call({
 int time
});




}
/// @nodoc
class __$TimeDialogStateCopyWithImpl<$Res>
    implements _$TimeDialogStateCopyWith<$Res> {
  __$TimeDialogStateCopyWithImpl(this._self, this._then);

  final _TimeDialogState _self;
  final $Res Function(_TimeDialogState) _then;

/// Create a copy of TimeDialogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,}) {
  return _then(_TimeDialogState(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
