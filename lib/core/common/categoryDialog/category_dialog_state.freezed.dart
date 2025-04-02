// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryDialogState {

/// 選んでいるボタンの数字
 int? get selectButtonNum;
/// Create a copy of CategoryDialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDialogStateCopyWith<CategoryDialogState> get copyWith => _$CategoryDialogStateCopyWithImpl<CategoryDialogState>(this as CategoryDialogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDialogState&&(identical(other.selectButtonNum, selectButtonNum) || other.selectButtonNum == selectButtonNum));
}


@override
int get hashCode => Object.hash(runtimeType,selectButtonNum);

@override
String toString() {
  return 'CategoryDialogState(selectButtonNum: $selectButtonNum)';
}


}

/// @nodoc
abstract mixin class $CategoryDialogStateCopyWith<$Res>  {
  factory $CategoryDialogStateCopyWith(CategoryDialogState value, $Res Function(CategoryDialogState) _then) = _$CategoryDialogStateCopyWithImpl;
@useResult
$Res call({
 int? selectButtonNum
});




}
/// @nodoc
class _$CategoryDialogStateCopyWithImpl<$Res>
    implements $CategoryDialogStateCopyWith<$Res> {
  _$CategoryDialogStateCopyWithImpl(this._self, this._then);

  final CategoryDialogState _self;
  final $Res Function(CategoryDialogState) _then;

/// Create a copy of CategoryDialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectButtonNum = freezed,}) {
  return _then(_self.copyWith(
selectButtonNum: freezed == selectButtonNum ? _self.selectButtonNum : selectButtonNum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc


class _CategoryDialogState implements CategoryDialogState {
  const _CategoryDialogState({this.selectButtonNum = null});
  

/// 選んでいるボタンの数字
@override@JsonKey() final  int? selectButtonNum;

/// Create a copy of CategoryDialogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDialogStateCopyWith<_CategoryDialogState> get copyWith => __$CategoryDialogStateCopyWithImpl<_CategoryDialogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDialogState&&(identical(other.selectButtonNum, selectButtonNum) || other.selectButtonNum == selectButtonNum));
}


@override
int get hashCode => Object.hash(runtimeType,selectButtonNum);

@override
String toString() {
  return 'CategoryDialogState(selectButtonNum: $selectButtonNum)';
}


}

/// @nodoc
abstract mixin class _$CategoryDialogStateCopyWith<$Res> implements $CategoryDialogStateCopyWith<$Res> {
  factory _$CategoryDialogStateCopyWith(_CategoryDialogState value, $Res Function(_CategoryDialogState) _then) = __$CategoryDialogStateCopyWithImpl;
@override @useResult
$Res call({
 int? selectButtonNum
});




}
/// @nodoc
class __$CategoryDialogStateCopyWithImpl<$Res>
    implements _$CategoryDialogStateCopyWith<$Res> {
  __$CategoryDialogStateCopyWithImpl(this._self, this._then);

  final _CategoryDialogState _self;
  final $Res Function(_CategoryDialogState) _then;

/// Create a copy of CategoryDialogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectButtonNum = freezed,}) {
  return _then(_CategoryDialogState(
selectButtonNum: freezed == selectButtonNum ? _self.selectButtonNum : selectButtonNum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
