// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'span_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpanDialogState {

/// 選んでいる日にち
 int get span;/// 選んでいるスパンの種類
 SpanType get spanType;
/// Create a copy of SpanDialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpanDialogStateCopyWith<SpanDialogState> get copyWith => _$SpanDialogStateCopyWithImpl<SpanDialogState>(this as SpanDialogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpanDialogState&&(identical(other.span, span) || other.span == span)&&(identical(other.spanType, spanType) || other.spanType == spanType));
}


@override
int get hashCode => Object.hash(runtimeType,span,spanType);

@override
String toString() {
  return 'SpanDialogState(span: $span, spanType: $spanType)';
}


}

/// @nodoc
abstract mixin class $SpanDialogStateCopyWith<$Res>  {
  factory $SpanDialogStateCopyWith(SpanDialogState value, $Res Function(SpanDialogState) _then) = _$SpanDialogStateCopyWithImpl;
@useResult
$Res call({
 int span, SpanType spanType
});




}
/// @nodoc
class _$SpanDialogStateCopyWithImpl<$Res>
    implements $SpanDialogStateCopyWith<$Res> {
  _$SpanDialogStateCopyWithImpl(this._self, this._then);

  final SpanDialogState _self;
  final $Res Function(SpanDialogState) _then;

/// Create a copy of SpanDialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? span = null,Object? spanType = null,}) {
  return _then(_self.copyWith(
span: null == span ? _self.span : span // ignore: cast_nullable_to_non_nullable
as int,spanType: null == spanType ? _self.spanType : spanType // ignore: cast_nullable_to_non_nullable
as SpanType,
  ));
}

}


/// @nodoc


class _SpanDialogState implements SpanDialogState {
  const _SpanDialogState({this.span = 1, this.spanType = SpanType.day});
  

/// 選んでいる日にち
@override@JsonKey() final  int span;
/// 選んでいるスパンの種類
@override@JsonKey() final  SpanType spanType;

/// Create a copy of SpanDialogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpanDialogStateCopyWith<_SpanDialogState> get copyWith => __$SpanDialogStateCopyWithImpl<_SpanDialogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpanDialogState&&(identical(other.span, span) || other.span == span)&&(identical(other.spanType, spanType) || other.spanType == spanType));
}


@override
int get hashCode => Object.hash(runtimeType,span,spanType);

@override
String toString() {
  return 'SpanDialogState(span: $span, spanType: $spanType)';
}


}

/// @nodoc
abstract mixin class _$SpanDialogStateCopyWith<$Res> implements $SpanDialogStateCopyWith<$Res> {
  factory _$SpanDialogStateCopyWith(_SpanDialogState value, $Res Function(_SpanDialogState) _then) = __$SpanDialogStateCopyWithImpl;
@override @useResult
$Res call({
 int span, SpanType spanType
});




}
/// @nodoc
class __$SpanDialogStateCopyWithImpl<$Res>
    implements _$SpanDialogStateCopyWith<$Res> {
  __$SpanDialogStateCopyWithImpl(this._self, this._then);

  final _SpanDialogState _self;
  final $Res Function(_SpanDialogState) _then;

/// Create a copy of SpanDialogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? span = null,Object? spanType = null,}) {
  return _then(_SpanDialogState(
span: null == span ? _self.span : span // ignore: cast_nullable_to_non_nullable
as int,spanType: null == spanType ? _self.spanType : spanType // ignore: cast_nullable_to_non_nullable
as SpanType,
  ));
}


}

// dart format on
