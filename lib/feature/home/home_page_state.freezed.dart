// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePageState {

/// 表示期間
 TermType get displayTerm;/// 今日
 DateTime get today;/// 表示しているページ番号
 int get pageIndexDay; int get pageIndexWeek;
/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageStateCopyWith<HomePageState> get copyWith => _$HomePageStateCopyWithImpl<HomePageState>(this as HomePageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState&&(identical(other.displayTerm, displayTerm) || other.displayTerm == displayTerm)&&(identical(other.today, today) || other.today == today)&&(identical(other.pageIndexDay, pageIndexDay) || other.pageIndexDay == pageIndexDay)&&(identical(other.pageIndexWeek, pageIndexWeek) || other.pageIndexWeek == pageIndexWeek));
}


@override
int get hashCode => Object.hash(runtimeType,displayTerm,today,pageIndexDay,pageIndexWeek);

@override
String toString() {
  return 'HomePageState(displayTerm: $displayTerm, today: $today, pageIndexDay: $pageIndexDay, pageIndexWeek: $pageIndexWeek)';
}


}

/// @nodoc
abstract mixin class $HomePageStateCopyWith<$Res>  {
  factory $HomePageStateCopyWith(HomePageState value, $Res Function(HomePageState) _then) = _$HomePageStateCopyWithImpl;
@useResult
$Res call({
 TermType displayTerm, DateTime today, int pageIndexDay, int pageIndexWeek
});




}
/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._self, this._then);

  final HomePageState _self;
  final $Res Function(HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayTerm = null,Object? today = null,Object? pageIndexDay = null,Object? pageIndexWeek = null,}) {
  return _then(_self.copyWith(
displayTerm: null == displayTerm ? _self.displayTerm : displayTerm // ignore: cast_nullable_to_non_nullable
as TermType,today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as DateTime,pageIndexDay: null == pageIndexDay ? _self.pageIndexDay : pageIndexDay // ignore: cast_nullable_to_non_nullable
as int,pageIndexWeek: null == pageIndexWeek ? _self.pageIndexWeek : pageIndexWeek // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _HomePageState extends HomePageState {
  const _HomePageState({this.displayTerm = TermType.day, required this.today, required this.pageIndexDay, required this.pageIndexWeek}): super._();
  

/// 表示期間
@override@JsonKey() final  TermType displayTerm;
/// 今日
@override final  DateTime today;
/// 表示しているページ番号
@override final  int pageIndexDay;
@override final  int pageIndexWeek;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePageStateCopyWith<_HomePageState> get copyWith => __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePageState&&(identical(other.displayTerm, displayTerm) || other.displayTerm == displayTerm)&&(identical(other.today, today) || other.today == today)&&(identical(other.pageIndexDay, pageIndexDay) || other.pageIndexDay == pageIndexDay)&&(identical(other.pageIndexWeek, pageIndexWeek) || other.pageIndexWeek == pageIndexWeek));
}


@override
int get hashCode => Object.hash(runtimeType,displayTerm,today,pageIndexDay,pageIndexWeek);

@override
String toString() {
  return 'HomePageState(displayTerm: $displayTerm, today: $today, pageIndexDay: $pageIndexDay, pageIndexWeek: $pageIndexWeek)';
}


}

/// @nodoc
abstract mixin class _$HomePageStateCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(_HomePageState value, $Res Function(_HomePageState) _then) = __$HomePageStateCopyWithImpl;
@override @useResult
$Res call({
 TermType displayTerm, DateTime today, int pageIndexDay, int pageIndexWeek
});




}
/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(this._self, this._then);

  final _HomePageState _self;
  final $Res Function(_HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayTerm = null,Object? today = null,Object? pageIndexDay = null,Object? pageIndexWeek = null,}) {
  return _then(_HomePageState(
displayTerm: null == displayTerm ? _self.displayTerm : displayTerm // ignore: cast_nullable_to_non_nullable
as TermType,today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as DateTime,pageIndexDay: null == pageIndexDay ? _self.pageIndexDay : pageIndexDay // ignore: cast_nullable_to_non_nullable
as int,pageIndexWeek: null == pageIndexWeek ? _self.pageIndexWeek : pageIndexWeek // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
